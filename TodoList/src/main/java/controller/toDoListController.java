package controller;

import domain.Todo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Controller("todo")
@RequestMapping(value="/api")
public class toDoListController {
    @RequestMapping(value="/tasks" ,method = RequestMethod.GET)
    public @ResponseBody List<Todo> showAll( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Todo> list=(List<Todo>) session.getAttribute("todolist");
        return list;
    }
    @RequestMapping(value="/tasks" ,method = RequestMethod.POST)
    public @ResponseBody void add(Todo td, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH时-mm分-ss秒");
        String time = dateFormat.format(new Date());
        td.setCreatedTime(time);
        HttpSession session = request.getSession();
        List<Todo> todolist = (List<Todo>) session.getAttribute("todolist");
        if(todolist==null){
            todolist=new ArrayList<>();
        }
        todolist.add(td);
        session.setAttribute("todolist",todolist);
        return;
    }
    @RequestMapping(value="/tasks/{id}" ,method = RequestMethod.DELETE)
    public @ResponseBody boolean delete(@PathVariable(name="id") String id,HttpServletRequest request) throws ServletException, IOException {
        Integer ID = Integer.parseInt(id);
        HttpSession session = request.getSession();
        List<Todo> list=(List<Todo>) session.getAttribute("todolist");
        if (list==null){
            return false;
        }else {

            for (Todo td:
                 list) {
                if(td.getId()==ID){
                    list.remove(td);
                }
            }
            return true;
        }

    }
    @RequestMapping(value="/tasks/{id}" ,method = RequestMethod.GET)
    public @ResponseBody Todo search(@PathVariable(name="id") String id,HttpServletRequest request) throws ServletException, IOException {
        System.out.println("访问到");
        Integer ID = Integer.parseInt(id);
        HttpSession session = request.getSession();
        List<Todo> list=(List<Todo>) session.getAttribute("todolist");
        if (list==null){
            return null;
        }
        for (Todo td:
             list) {
            if(td.getId()==ID){
                System.out.println("找到了");
                return td;
            }
        }
         return null;
    }
}
