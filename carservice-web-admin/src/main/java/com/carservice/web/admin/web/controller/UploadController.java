package com.carservice.web.admin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class UploadController {

    private static final String UPLOAD_PATH = "/static/upload/";

    /**
     * 文件上传
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "upload", method = RequestMethod.POST)
    public Map<String, Object> upload(MultipartFile dropFile, MultipartFile editorFile, HttpServletRequest request) {

        Map<String, Object> result = new HashMap<>();

        MultipartFile myFile = dropFile == null ? editorFile : dropFile;
        System.out.println(request.getSession().getServletContext().getRealPath("/"));
        String fileName = myFile.getOriginalFilename();
        String fileSuffix = fileName.substring(fileName.lastIndexOf("."));
        //文件存放路径
        String filePath = request.getSession().getServletContext().getRealPath(UPLOAD_PATH);
        //判断文件存放路径是否存在，不存在则创建文件夹
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdir();
        }

        //将文件写入目标
        file = new File(filePath, UUID.randomUUID() + fileSuffix);
        try {
            myFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }

        if(dropFile != null) {
            result.put("fileName", UPLOAD_PATH + file.getName());
        } else {
            String serverPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
            result.put("errno", 0);
            result.put("data",new String[] {serverPath + UPLOAD_PATH + file.getName()});
        }
        //System.out.println(UPLOAD_PATH + file.getName());
        return result;
    }
}
