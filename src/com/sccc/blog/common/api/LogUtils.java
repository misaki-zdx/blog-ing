package com.sccc.blog.common.api;

import org.slf4j.Logger;

public final class LogUtils {
    public static final Logger log;

    static {
        log = (Logger) SpringContextUtils.getBean(Logger.class);
    }
}