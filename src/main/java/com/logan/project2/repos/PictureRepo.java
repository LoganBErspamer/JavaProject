package com.logan.project2.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.logan.project2.models.Picture;

@Repository
public interface PictureRepo extends CrudRepository<Picture, Long> {
List<Picture> findAll();
}
