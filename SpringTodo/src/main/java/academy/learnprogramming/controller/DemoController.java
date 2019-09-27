package academy.learnprogramming.controller;

import academy.learnprogramming.service.DemoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Slf4j
@Controller
public class DemoController {

    // == Fields ==
    private final DemoService demoService;

    // == Constructors ==
    @Autowired
    public DemoController(DemoService demoService) {
        this.demoService = demoService;
    }

    // == Request Methods ==

    // http://localhost:8080/todo-list/hello
    @ResponseBody
    @GetMapping("/hello")
    public String hello() {
        return "hello"; // <-- (view name)
    }

    // http://localhost:8080/todo-list/welcome
    // http://localhost:8080/todo-list/welcome?user=Bowzer
    @GetMapping("welcome")
    public String welcome(@RequestParam String user, @RequestParam int age, Model model) {
        log.info("model = {}", model);
        model.addAttribute("helloMessage", demoService.getHelloMessage(user));// <-- key value pair added to model
        model.addAttribute("age",age);


        //  /WEB-INF/view/welcome.jsp
        return "welcome";
    }

    // == Model Attributes ==

    // http://localhost:8080/todo-list/welcomeMessage
    @ModelAttribute("welcomeMessage")
    public String welcomeMessage(){
        log.info("welcomeMessage() called...");
        return demoService.getWelcomeMessage();

    }
}
