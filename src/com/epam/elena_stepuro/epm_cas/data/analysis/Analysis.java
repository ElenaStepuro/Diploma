package com.epam.elena_stepuro.epm_cas.data.analysis;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.sun.rowset.internal.Row;

import javafx.scene.control.Cell;

/**
 * ��������: �����, ���������� ���������� ������� ������� ���������, �� ������
 * ����������� ������������ � ����������� ��� �������
 * 
 * @author �����
 * @date June 10, 2017
 *
 */
public class Analysis {

	/**
	 * ������ ������ Attendance
	 */
	private Attendance attendance;
	/**
	 * ������ ������ AcademicPerfomance
	 */
	private AcademicPerfomance perfomance;

	/**
	 * ��������: ����������� �� ���������
	 * 
	 * @author �����
	 */
	public Analysis() {
	}

	/**
	 * ��������: ���������� ������������������� ����� ������������ �� ������
	 * ���� ��� ������� ��������
	 * 
	 * @return ���� �� ������������
	 * @author �����
	 */
	public double calcAnalysis(int count) {
		double result = 0;
		List<String> students = getStudentCount();

		for (String student : students) {
			int countPerfomance = perfomance.getPerfomance(student);
			int attendance = attendance.getAttendance(student);
			if (countPerfomance - count < 0) {
				result = (countPerfomance - count) * attendance * (countPerfomance / count);
			} else {
				result = attendance * (countPerfomance / count);
			}
		}

		return result;
	}

	/**
	 * ��������: ��������� ���������� ���������, ��������� �����
	 * 
	 * @return ���������� ���������, ���������� �����
	 * @author �����
	 */
	private List<String> getStudentCount() {
		// �������������� ������
		List<String> result = new ArrayList<String>();
		InputStream inputStream = null;
		HSSFWorkbook workBook = null;
		try {
			inputStream = new FileInputStream(perfomance.filePerfomance);
			workBook = new HSSFWorkbook(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// ��������� ������ ���� �������� ����� �� ��������� ������
		Sheet sheet = workBook.getSheetAt(0);
		Iterator<Row> it = sheet.iterator();
		// �������� �� ����� �����
		while (it.hasNext()) {
			Row row = it.next();
			Iterator<Cell> cells = row.iterator();
			while (cells.hasNext()) {
				Cell cell = cells.next();
				int cellType = cell.getCellType();
				// ���������� ��������� ���� �����
				switch (cellType) {
				case Cell.CELL_TYPE_STRING:
					result.add(cell.getStringCellValue());
					break;
				case Cell.CELL_TYPE_NUMERIC:
					result.add(cell.getNumericCellValue());
					break;

				case Cell.CELL_TYPE_FORMULA:
					result.add(cell.getNumericCellValue());
					break;
				default:
					result.add("|");
					break;
				}
			}
		}
		return result;
	}

	/**
	 * ��������: ��������� ������� �������� �� ������ ����
	 * 
	 * @param countPerformance
	 *            - ���������� ���������� ������� �� ������ ����
	 * @param countAttendance
	 *            - ������ �� ����������� ������� �� ������ ����
	 * @return ������� �������� ����� �� ������� ��������
	 * @author �����
	 */
	public double avgAnalysis(int count) {
		double avg = 0;
		int countStudent = getStudentCount().size();
		avg = calcAnalysis(count) / countStudent;
		return avg;
	}
}
