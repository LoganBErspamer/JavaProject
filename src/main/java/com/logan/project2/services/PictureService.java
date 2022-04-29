package com.logan.project2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logan.project2.models.Picture;
import com.logan.project2.repos.PictureRepo;

@Service
public class PictureService {
@Autowired
private PictureRepo pictureRepo;
//READ ALL
	public List<Picture> allPictures() {
		return pictureRepo.findAll();
	}

//CREATE & UPDATE
	public Picture createPicture(Picture varName) {
		return pictureRepo.save(varName);
	}

//Read One
	public Picture findPicture(Long id) {
		Optional<Picture> optionalPicture = pictureRepo.findById(id);
		if (optionalPicture.isPresent()) {
			return optionalPicture.get();
		} else {
			return null;
		}
	}

//UPDATE
	

//DELETE
	public String deletePicture(Long id) {
		pictureRepo.deleteById(id);
		return "redirect:/";
	}
}
