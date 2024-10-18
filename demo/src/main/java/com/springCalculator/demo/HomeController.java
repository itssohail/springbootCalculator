package com.springCalculator.demo;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "index.jsp";
    }

    @RequestMapping("/calculate")
    public String calculate(@RequestParam("num1") int firstNumber, @RequestParam("num2") int secondNumber,
                            @RequestParam("operation") String operation, HttpSession session) {

        int result = 0;
        String errorMessage = null;

        switch (operation) {
            case "add":
                result = firstNumber + secondNumber;
                session.setAttribute("result", result);
                break;
            case "subtract":
                result = firstNumber - secondNumber;
                session.setAttribute("result", result);
                break;
            case "multiply":
                result = firstNumber * secondNumber;
                session.setAttribute("result", result);
                break;
            case "divide":
                if (secondNumber != 0) {
                    result = firstNumber / secondNumber;
                    session.setAttribute("result", result);
                } else {
                    errorMessage = "Cannot divide by zero";
                }
                break;
            default:
                errorMessage = "Please check the entries and try again";
                break;
        }

        // Set the attributes for display
        if (errorMessage != null) {
            session.setAttribute("errorMessage", errorMessage);
        } else {
            session.removeAttribute("errorMessage"); // Clear any previous error message
        }

        // Set the result attribute
        session.setAttribute("result", result);

        return "index.jsp";
    }
}