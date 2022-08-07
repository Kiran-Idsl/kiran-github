package com.kiran.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.kiran.entity.JobSeekerInfo;

@Component("excel_report")
public class Excel1 extends AbstractXlsView{
	private int i=1;
	@Override
	public void buildExcelDocument(Map<String, Object> map, 
			Workbook workbook, HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		List<JobSeekerInfo> list=(List<JobSeekerInfo>)map.get("empsList");
		//create  excel sheet in work
		Sheet sheet1=workbook.createSheet("Job Seeker Info");
		Row row1=sheet1.createRow(0);
		
		row1.createCell(0).setCellValue("JS ID");
		row1.createCell(1).setCellValue("Address");
		row1.createCell(2).setCellValue("Name");
		row1.createCell(3).setCellValue("Photo");
		row1.createCell(4).setCellValue("Resume");
		
		list.forEach(emp->{
			// add row to Excel sheet			
			Row row=sheet1.createRow(i);
			//add cells to row
			row.createCell(0).setCellValue(emp.getJsId());
			row.createCell(1).setCellValue(emp.getJsAddrs());
			row.createCell(2).setCellValue(emp.getJsName());
			row.createCell(3).setCellValue(emp.getPhotoPath());
			row.createCell(4).setCellValue(emp.getResumePath());
			i++;
		});//forEach(-)
		
	}
}
