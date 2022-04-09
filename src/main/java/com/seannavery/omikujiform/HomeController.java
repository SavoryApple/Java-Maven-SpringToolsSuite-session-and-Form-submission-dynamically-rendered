package com.seannavery.omikujiform;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
// New import needed!
import org.springframework.ui.Model;
@Controller
public class HomeController {
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("dojoName", "Burbank");
        return "index.jsp";
    }
    
    @RequestMapping(value="/submit", method=RequestMethod.POST)
    public String login(HttpSession session, Model model,
        @RequestParam(value="anyNumber") Integer anyNumber,
        @RequestParam(value="anyCity") String anyCity,
    	@RequestParam(value="nameOfRealPerson") String nameOfRealPerson,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="livingThing") String livingThing,
		@RequestParam(value="sayNice") String sayNice
    	){	
    	session.setAttribute("anyNumber", anyNumber);
    	session.setAttribute("anyCity", anyCity);
    	session.setAttribute("nameOfRealPerson", nameOfRealPerson);
    	session.setAttribute("hobby", hobby);
    	session.setAttribute("livingThing", livingThing);
    	session.setAttribute("sayNice", sayNice);
        return "redirect:/show";
    }
    
    @RequestMapping("/show")
    public String result(HttpSession session, Model model) {
    	Integer numberChosen = (Integer) session.getAttribute("anyNumber");
		String anyCity = (String) session.getAttribute("anyCity");
		String nameOfRealPerson = (String) session.getAttribute("nameOfRealPerson");
		String hobby = (String) session.getAttribute("hobby");
		String livingThing = (String) session.getAttribute("livingThing");
		String sayNice = (String) session.getAttribute("sayNice");
		model.addAttribute("numberChosen", numberChosen);
		model.addAttribute("anyCity", anyCity);
		model.addAttribute("nameOfRealPerson", nameOfRealPerson);
		model.addAttribute("hobby", hobby);
		model.addAttribute("livingThing", livingThing);
		model.addAttribute("sayNice", sayNice);

        return "formResult.jsp";
    }
}