package com.example.myservlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

@WebServlet("/Dangky")
public class Dangky extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Map lưu thông tin người dùng tạm thời
    private Map<String, JSONObject> userData = new HashMap<>();

    // Phương thức xử lý đăng ký người dùng
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Kiểm tra các điều kiện
        if (fullname == null || email == null || password == null || confirmPassword == null) {
            request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin!");
        } else if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Mật khẩu không khớp!");
        } else {
            // Xử lý đăng ký thành công
            request.setAttribute("successMessage", "Đăng ký thành công!");
        }

        // Trả về trang đăng ký
        request.getRequestDispatcher("Dangky.jsp").forward(request, response);
    }

    // Phương thức xử lý lấy thông tin người dùng
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JSONObject jsonResponse = new JSONObject();
        try {
            String email = request.getParameter("email");
            if (email != null && userData.containsKey(email)) {
                jsonResponse.put("status", "success");
                jsonResponse.put("data", userData.get(email));
            } else {
                jsonResponse.put("status", "error");
                jsonResponse.put("message", "Người dùng không tồn tại.");
            }
        } catch (Exception e) {
            jsonResponse.put("status", "error");
            jsonResponse.put("message", "Có lỗi xảy ra: " + e.getMessage());
        }
        response.getWriter().write(jsonResponse.toString());
    }

    // Phương thức xử lý cập nhật thông tin người dùng
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JSONObject jsonResponse = new JSONObject();
        try {
            StringBuilder sb = new StringBuilder();
            String line;
            try (BufferedReader reader = request.getReader()) {
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
            }

            JSONObject jsonRequest = new JSONObject(sb.toString());
            String email = jsonRequest.optString("email");
            String fullname = jsonRequest.optString("fullname");

            if (email.isEmpty() || fullname.isEmpty() || !userData.containsKey(email)) {
                jsonResponse.put("status", "error");
                jsonResponse.put("message", "Người dùng không tồn tại hoặc thiếu thông tin.");
                response.getWriter().write(jsonResponse.toString());
                return;
            }

            JSONObject user = userData.get(email);
            user.put("fullname", fullname);
            userData.put(email, user);

            jsonResponse.put("status", "success");
            jsonResponse.put("message", "Cập nhật thông tin thành công!");
        } catch (Exception e) {
            jsonResponse.put("status", "error");
            jsonResponse.put("message", "Có lỗi xảy ra: " + e.getMessage());
        }
        response.getWriter().write(jsonResponse.toString());
    }

    // Phương thức xử lý xóa người dùng
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JSONObject jsonResponse = new JSONObject();
        try {
            StringBuilder sb = new StringBuilder();
            String line;
            try (BufferedReader reader = request.getReader()) {
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
            }

            JSONObject jsonRequest = new JSONObject(sb.toString());
            String email = jsonRequest.optString("email");

            if (email.isEmpty() || !userData.containsKey(email)) {
                jsonResponse.put("status", "error");
                jsonResponse.put("message", "Người dùng không tồn tại.");
                response.getWriter().write(jsonResponse.toString());
                return;
            }

            userData.remove(email);

            jsonResponse.put("status", "success");
            jsonResponse.put("message", "Xóa thành công!");
        } catch (Exception e) {
            jsonResponse.put("status", "error");
            jsonResponse.put("message", "Có lỗi xảy ra: " + e.getMessage());
        }
        response.getWriter().write(jsonResponse.toString());
    }
}
