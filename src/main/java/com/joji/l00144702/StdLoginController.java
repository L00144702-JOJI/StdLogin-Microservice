package com.joji.l00144702;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.joji.l00144702.model.StdUser;
import com.joji.l00144702.model.StdUserInterface;

@Controller
public class StdLoginController {
	
	@Autowired
	private StdUserInterface stdUserInterface;
	
	RestTemplate restTemplate=new RestTemplate();
	
	@RequestMapping("/")
	public String checkMVC()
	{
		return "stdlogin";
	}
	
	@RequestMapping("/stdlogin")
	public String HomePagelogin(@RequestParam("stdname") String stdname,
								@RequestParam("stdpassword") String stdpassword,
								Model model)
	{
		StdUser ur = null;
		try {
			ur=stdUserInterface.findByName(stdname);
		}catch (Exception e) {
			System.out.println("User not found !!!");
		}
		if(ur!=null) {
		model.addAttribute("StdName", stdname );
		return "stdhomePage";
		}
		model.addAttribute("error", "User not found, Kindly register !!!");
		return "stdlogin";
	}
	
	@RequestMapping("/stdregister")
	public String stdRegisterPage() 
	{
		 return "stdregister";
	}
	
	@RequestMapping("/set-user")
	public String stdRegisterMicroservice(@RequestParam("stdname") String stdname,
			@RequestParam("stdpassword1") String stdpassword1,
			@RequestParam("stdpassword2") String stdpassword2,Model model) {
		System.out.println("********************going to registration microservice from login microservice****************");
		if(stdpassword1.equals(stdpassword2)) {
			restTemplate.getForObject("http://localhost:4142/stdregister-User/"+stdname+"/"+stdpassword1,
					String.class);
			model.addAttribute("successfullyRegistered","Student Successfully Registered !!!");
		}
		else{
			model.addAttribute("registrationError", "Password Not Same !!!");
		}
		System.out.println("********************registration microservice from login microservice ends ****************");
		return "stdlogin";
	}
}