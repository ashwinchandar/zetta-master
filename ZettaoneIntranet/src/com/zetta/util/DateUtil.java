package com.zetta.util;
 
import java.text.SimpleDateFormat;
import java.util.Date;  

public class DateUtil {

	public static Date getDateFromString(String incomingDate) { 
		Date date=null;
		try { 
			if(incomingDate!=null && !incomingDate.trim().isEmpty()) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
				date=sdf.parse(incomingDate.trim());
				System.out.println(date);	 
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return date;
		  
	}
}


Announcement 

Max 3 Announce in Column.
Show new Message at first.
Show date of the message posted.

Issue: Scriptlet error.

File Upload and View in jsp page

Admin only can upload .pdf file and they only can delete.
.pdf file should view in general page.
note: No one possible to download the pdf.

Logout