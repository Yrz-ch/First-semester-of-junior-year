package com.yrz.controller;


import com.yrz.pojo.Pfile;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("/toupload")
    public String toUpload(){
        return "uploadfile";
    }
    @RequestMapping("/todownload")
    public String todownload(){
        return "downloadfile";
    }

    /* /upload的映射，且只适用于POST方法*/
    @RequestMapping(value="/upload",method= RequestMethod.POST)
    //参数里的pfile 是用来接收传来的文件的
    //因为对应上传的文件，类型为MultipartFile，上传文件会自动绑定到 方法参数pfile里的MultipartFile成员变量
    public String upload(HttpServletRequest request, Pfile pfile, Model model) throws Exception{
        if(!pfile.getFile().isEmpty()){
            //path为项目目录下的files目录的路径，（getRealPath()获取绝对路径）
            String path = request.getSession().getServletContext().getRealPath("/files/");
            //getOriginalFilename()获取上传文件的原名
            String filename = pfile.getFile().getOriginalFilename();
            File filepath = new File(path,filename);
            if(!filepath.getParentFile().exists()){
                filepath.getParentFile().mkdirs();
            }
			/*transferTo()将上传文件保存到一个目标文件中，separator为目录与目录之间的分隔符，如/a/b/c.txt 中的 \
			  将pfile中的文件保存到目标位置*/
            pfile.getFile().transferTo(new File(path+File.separator+filename));
            model.addAttribute("pfile",pfile);	//向模型model中加入pfile作为数据，给页面调用

            return "downloadfile";				//返回到下载文件的页面
        }
        return "error";
    }


    //处理单一文件下载
    @RequestMapping(value="/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request,
                                           @RequestParam("filename") String filename,Model model)throws Exception{
        //获得要文件所在父目录的绝对路径
        String path = request.getSession().getServletContext().getRealPath("/files/");
        //获得要下载的文件的对象
        File file = new File(path+File.separator+filename);
        HttpHeaders headers = new HttpHeaders();
        //解决中文显示的编码问题，后一个UTF-8是要转编码成的编码，若前后都是一样的（如下），就需要写这句，我下面那句只是演示用
        String downloadFileName = new String(filename.getBytes("UTF-8"),"UTF-8");
        //通知浏览器以attachment(下载方式)打开文件
        headers.setContentDispositionFormData("attachment",downloadFileName);
        //设置文件的MIME类型
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        //download方法收到页面传递的文件名filename后，使用FileUpload组件的FileUtils读取项目的files文件夹下的该文件
        //并将其构成ResponseEntity对象返回客户端下载
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.CREATED);
    }

}
