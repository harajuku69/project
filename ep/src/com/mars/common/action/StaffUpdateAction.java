package com.mars.common.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mars.staff.dao.StaffDao;
import com.mars.staff.dto.StaffDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class StaffUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = "staff/staffDetail.jsp";
		
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = 
				new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		StaffDto sDto = new StaffDto();
		
//		System.out.println("업데이트 전 : " +sDto);

		String empid = SS.getEmpid(request);
		sDto.setEmpid(empid);
		sDto.setPhone(multi.getParameter("phone"));
		sDto.setPic(multi.getFilesystemName("pic"));

//		사진 변경(선택)없을 경우 noChangeImg로 hidden으로 넘겨서 받는다
		if(sDto.getPic() == null){
			sDto.setPic(multi.getParameter("noChangePic"));
		}
		
		sDto.setZipcd(multi.getParameter("zipcd"));
		sDto.setAddr(multi.getParameter("addr"));
		sDto.setAddrdtl(multi.getParameter("addrdtl"));
		StaffDao sDao = StaffDao.getInstance();
		sDao.updateStaffIndInfo(sDto);
//		sDto.setPwd(multi.getParameter("pwd"));
//		System.out.println(sDto.getPic());
		//DB에 덥데이트 완료. 이후는 detail 로 가기 위해 다시 정보 가져와서 마는 작업
		
		sDto = sDao.selectOneByEmpid(empid);
//		System.out.println("업데이트 후 : " +sDto);
		request.setAttribute("reqStaff", sDto);
		SS.getSS(request).setAttribute("ssPic", sDto.getPic());
		Fmt.toFmtAndReqSet(request, sDto);
		Paging.getRecentList(request);
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

}




























