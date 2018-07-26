package com.ibm.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.DepartmentDAO;
import com.ibm.model.Department;

@WebServlet("/department")
public class DepartmentController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get location id from user
		int id = Integer.parseInt(request.getParameter("loc"));
		//Get the List of department by using DAO
		DepartmentDAO dao = new DepartmentDAO();
		ArrayList<Department> depts = dao.getDeptbyLoc(id);
		//Add the List as a request attribute
		request.setAttribute("list", depts);
		//forward the request
		RequestDispatcher disp = request.getRequestDispatcher("departmentlist.jsp");
		disp.forward(request, response);
	}

}
