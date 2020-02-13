package com.bagevent.util;

import org.springframework.web.servlet.view.JstlView;

import java.io.File;
import java.util.Locale;

public class defaultjstlview extends JstlView {

    @Override
    public boolean checkResource(Locale locale) throws Exception {
        File file =new File(this.getServletContext().getRealPath("/")+getUrl());
        System.out.println(file.getName());
        System.out.println(file.getAbsolutePath());
        return file.exists();
    }
}
