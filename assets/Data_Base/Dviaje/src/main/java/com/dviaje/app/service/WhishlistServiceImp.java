package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Whishlist;
import com.dviaje.app.repository.IWhishlistRepository;

@Service
public class WhishlistServiceImp implements IWhishlistService  {
	@Autowired
	IWhishlistRepository whishlistRepository;

	@Override
	public List<Whishlist> findAllWhishlist() {
		return  (List<Whishlist>) whishlistRepository.findAll();
	}

	@Override
	public Whishlist findWhishlistById(Long id) {
		return  whishlistRepository.findById(id).orElse(null);
	}

	@Override
	public Whishlist deleteWhishlistById(Long id) {
		Whishlist whishlist= findWhishlistById(id);
		whishlistRepository.deleteById(id);
		return whishlist;
	}

	@Override
	public Whishlist saveWhishlist(Whishlist whishlist) {
		return whishlistRepository.save(whishlist);
	}

}
