package com.bonc.tender.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bonc.tender.entity.User;
import com.bonc.tender.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String getEntryByParams(@RequestParam(value = "page", defaultValue = "0") Integer page,
			 Model model, String choice, String str) {
		Page<User> user = null;
		List<User> userList = null;
		Sort sort = new Sort(Sort.Direction.DESC, "id");
		 int size=3;
		Pageable pageable = new PageRequest(page, size, sort);

		if (null != str && choice.equals("email")) {
			user = (Page<User>) userRepository.findByEmail(str, pageable);
		}

		else if (null != str && choice.equals("name")) {
			user = (Page<User>) userRepository.findByName(str, pageable);
			
		}

		else {
			user = userRepository.findAll(pageable);
		}
        int totalPage=user.getTotalPages();
		int prePage = page > 0 ? page - 1 : page;
		int nextPage = page < totalPage-1 ? page + 1 : page;
		model.addAttribute("prePage", prePage);
		model.addAttribute("nextPage", nextPage);
		model.addAttribute("user", user);
		model.addAttribute("str",str);
		model.addAttribute("choice", choice);
		return "index2";

	}

	@RequestMapping("/add")
	public String addUser(User user, Model model) {
		User ret = userRepository.save(user);
		return "redirect:/show";
	}

	@RequestMapping("delete")
	public String deleteUser(Integer id) {
		userRepository.delete(id);
		return "redirect:/show";
	}

	@RequestMapping("update")
	public String updateUser(User user) {
		userRepository.save(user);
		return "redirect:/show";
	}

	@RequestMapping("/updateUser")
	public String goUpdate(Integer id, Model model) {
		User user1 = userRepository.findOne(id);
		model.addAttribute("user1", user1);
		return "updateUser";
	}

	@RequestMapping("addUser")
	public String goAdd() {
		return "addUser";
	}

	@RequestMapping("selectUser")
	public String goSelectUser() {
		return "searchUser";
	}

}
