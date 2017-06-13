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
 * Описание: класс, проводящий вычисления анализа успехов стуендтов, на основе
 * результатов успеваемости и посещемости ими занятий
 * 
 * @author Елена
 * @date June 10, 2017
 *
 */
public class Analysis {

	/**
	 * Объект класса Attendance
	 */
	private Attendance attendance;
	/**
	 * Объект класса AcademicPerfomance
	 */
	private AcademicPerfomance perfomance;

	/**
	 * Описание: конструктор по умолчанию
	 * 
	 * @author Елена
	 */
	public Analysis() {
	}

	/**
	 * Описание: вычисление проанализированного балла успеваемости по каждой
	 * теме для каждого студента
	 * 
	 * @return балл за успеваемость
	 * @author Елена
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
	 * Описание: получение количества студентов, походящих курсы
	 * 
	 * @return количество студентов, проходящих курсы
	 * @author Елена
	 */
	private List<String> getStudentCount() {
		// инициализируем потоки
		List<String> result = new ArrayList<String>();
		InputStream inputStream = null;
		HSSFWorkbook workBook = null;
		try {
			inputStream = new FileInputStream(perfomance.filePerfomance);
			workBook = new HSSFWorkbook(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// разбираем первый лист входного файла на объектную модель
		Sheet sheet = workBook.getSheetAt(0);
		Iterator<Row> it = sheet.iterator();
		// проходим по всему листу
		while (it.hasNext()) {
			Row row = it.next();
			Iterator<Cell> cells = row.iterator();
			while (cells.hasNext()) {
				Cell cell = cells.next();
				int cellType = cell.getCellType();
				// перебираем возможные типы ячеек
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
	 * Описание: вычисляет среднее значение по каждой теме
	 * 
	 * @param countPerformance
	 *            - количество посещенных занятий по данной теме
	 * @param countAttendance
	 *            - оценка за выполненное задание по данной теме
	 * @return среднее значение балла по каждому предмету
	 * @author Елена
	 */
	public double avgAnalysis(int count) {
		double avg = 0;
		int countStudent = getStudentCount().size();
		avg = calcAnalysis(count) / countStudent;
		return avg;
	}
}
