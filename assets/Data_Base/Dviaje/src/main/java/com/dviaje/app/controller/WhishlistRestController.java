package com.dviaje.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dviaje.app.entity.Whishlist;
import com.dviaje.app.service.IWhishlistService;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class WhishlistRestController {

	@Autowired
	IWhishlistService whishlistService;
	
	@GetMapping("/whishlist")
	public List<Whishlist> Whishlist(){
		return whishlistService.findAllWhishlist();		
	}

	@GetMapping("/whishlist/{id}")
	public Whishlist WhishlistById(@PathVariable Long id){
			return whishlistService.findWhishlistById(id);	
	}
	
	@PostMapping("/whishlist")
	public Whishlist newWhishlist(@RequestBody Whishlist  whishlist){
		return whishlistService.saveWhishlist(whishlist);
	}
	
	@PutMapping("/whishlist")
	public Whishlist replaceWhishlist(@RequestBody Whishlist  whishlist) {
		//Filtros para asegurar que esté un ID y exista
		return whishlistService.saveWhishlist( whishlist);
	}
	@DeleteMapping("/whishlist/{id}")
	public Whishlist borrarWhishlist(@PathVariable Long id){
		return whishlistService.deleteWhishlistById(id);		
	}
}
