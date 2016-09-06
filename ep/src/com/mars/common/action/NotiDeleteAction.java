package com.mars.common.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.mars.noti.dao.NotiDao;
import com.mars.noti.dto.NotiDto;

public class NotiDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notino = Integer.parseInt(request.getParameter("notino"));
		
		NotiDao nDao = NotiDao.getInstance();
		int result = nDao.deleteNoti(notino);
		JsonObject json = new JsonObject();
		
		if(result ==1){
			json.addProperty("msg", "success");
		} else{
			json.addProperty("msg", "fail");
		}
		Paging.getRecentList(request);
		PrintWriter out = response.getWriter();
		out.print(json);
	}

}
