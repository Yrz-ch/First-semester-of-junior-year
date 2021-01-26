package com.yrz.pojo;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

public class Pfile implements Serializable {
    private MultipartFile file;	//文件，必需用MultipartFile类型

    public MultipartFile getFile() {
        return file;
    }
    public void setFile(MultipartFile file) {
        this.file = file;
    }

}
