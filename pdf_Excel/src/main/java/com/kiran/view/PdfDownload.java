package com.kiran.view;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.kiran.entity.JobSeekerInfo;
import com.lowagie.text.Document;
import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;

@Component("pdf_report")
public class PdfDownload extends AbstractPdfView{

	@Override
	public void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<JobSeekerInfo> list=(List<JobSeekerInfo>)map.get("empsList");
		// add Paragraph
		Paragraph para=new Paragraph("Employee Report", new Font(Font.TIMES_ROMAN,
				                                        Font.DEFAULTSIZE,
		                                               Font.BOLDITALIC));
		
		
		document.add(para);	
		Table table=new  Table(5,((ArrayList) list).size());
		//
		table.addCell("Js Id");
		table.addCell("Js Address");
		table.addCell("Js Name");
		table.addCell("Js Photo");
		table.addCell("Js Resume");
		//table.getBorder();
		table.getBorderColor().getGreen();
		//table.getBackgroundColor().getBlue();
		//table.endHeaders();
		for(JobSeekerInfo emp:list) {
			table.addCell(String.valueOf(emp.getJsId()));
			table.addCell(emp.getJsAddrs());
			table.addCell(emp.getJsName());
			table.addCell(emp.getPhotoPath());
			table.addCell(emp.getResumePath());
				
		}
		document.add(table);
		
		
	}

}
