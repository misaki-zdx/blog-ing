package com.sccc.blog.common.api;

import java.io.File;
import java.util.Objects;

public final class WebContentUtils {
    private static final String APP_NAME;
    private static final String REAL_PATH;
    private static final String APP_INDEX;

    private WebContentUtils() {
    }

    static {
        APP_NAME = SpringContextUtils.getApplicationContext().getApplicationName().replace("/", "");
        String temp = Objects.requireNonNull(WebContentUtils.class.getClassLoader().getResource("")).getPath();
        if (temp.contains("jar")) {
            REAL_PATH = temp.replace("file:", "").replace(APP_NAME + ".jar!/BOOT-INF/classes!/", "");
        } else {
            REAL_PATH = temp.replace("WEB-INF/classes/", "");
        }
        APP_INDEX = "/" + APP_NAME + "/";
    }

    public static String getRealPath() {
        return "\\".equals(File.separator) ? REAL_PATH.replaceFirst("/", "").replace("/", "\\") : REAL_PATH;
    }

    public static String getAppName() {
        return APP_NAME;
    }

    public static String getAppIndex() {
        return APP_INDEX;
    }
}
