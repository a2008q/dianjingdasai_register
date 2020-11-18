package servlet;

import entity.Teams;
import service.TeamService;
import service.impl.TeamServiceImpl;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RegServlet",urlPatterns = {"/RegServlet"})
public class RegServlet extends HttpServlet {



    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置请求编码格式
        req.setCharacterEncoding("utf-8");
        //设置响应编码格式
        resp.setContentType("utf-8");
        //调用注册处理方法
        TeamReg(req,resp);
    }
    //处理注册
    private void TeamReg(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        //获取请求信息
        String name = req.getParameter("name");
        String captain = req.getParameter("captain");
        String member1 = req.getParameter("member1");
        String member2= req.getParameter("member2");
        String member3 = req.getParameter("member3");
        String member4 = req.getParameter("member4");
        String phone = req.getParameter("phone");
//        System.out.println(name+":"+captain);
        //处理请求信息
        TeamService ts = new TeamServiceImpl();
//        Teams t = ts.TeamReg(name,captain,member1,member2,member3,member4);
        Teams t = new Teams(name,captain,member1,member2,member3,member4,phone);
        int index = ts.TeamRegService(t);
        if(index>0){
            HttpSession hs = req.getSession();
            hs.setAttribute("reg",true);
            resp.sendRedirect("/regSuccess.jsp");
        }
    }


}
