package com.javaweb.utils;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Component
public class UploadFileUtils {

    public void writeOrUpdate(String path, byte[] bytes) {
        // path = /building/ANH2.png
        String fullPath = "C:/home/office" + path;

        File parentDir = new File(StringUtils.substringBeforeLast(fullPath, "/"));
        if (!parentDir.exists()) {
            parentDir.mkdirs(); // 🔥 RẤT QUAN TRỌNG
        }

        try (FileOutputStream fop = new FileOutputStream(fullPath)) {
            fop.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

