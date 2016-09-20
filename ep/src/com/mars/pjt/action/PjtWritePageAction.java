package com.mars.pjt.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mars.common.action.Action;
import com.mars.common.action.Paging;

public class PjtWritePageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "pjt/pjtWrite.jsp";
		
		Paging.getRecentList(request);
		
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);

	}

}