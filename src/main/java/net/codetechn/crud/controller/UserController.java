package net.codetechn.crud.controller;

import net.codetechn.crud.dao.UserDao;
import net.codetechn.crud.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    //list all users
    @RequestMapping("/")
    public  String home(Model model){
        List<User>   users = userDao.users();
        model.addAttribute("users",users);
        return "index";
    }
    // show add user screen
    @RequestMapping("/add-user")
    public String addUSer(Model model){
        User user=new  User();
        model.addAttribute("user",user);
        return "add_user";
    }

    //post user
    @PostMapping( "/submit-user")
    public String saveUser(@ModelAttribute("user") User user){
        //save the user using service
        userDao.createUser(user);

        return "redirect:/";

    }

    //delete handle request
    @RequestMapping("/delete/{user_id}")
   // public RedirectView deleteUser(@PathVariable("user_id") int id,HttpServletRequest request){
     public String deleteUser(@PathVariable("user_id") int id){
        userDao.deleteUser(id);
       // RedirectView redirectView = new RedirectView();
       // redirectView.setUrl(request.getContextPath()+"/");
        return  "redirect:/";

    }

    //show updated form
    @GetMapping("/updated/{uid}")
    public String updatedUserForm (@PathVariable("uid") int id, Model model){
        User user = this.userDao.getSingleUSer(id);
        model.addAttribute("user",user);
        return  "update_user";
    }
}
