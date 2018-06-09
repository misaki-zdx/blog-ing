package com.sccc.blog.common.api;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public final class JsonUtils {
    public static final ObjectMapper mapper;

    static {
        mapper = (ObjectMapper) SpringContextUtils.getBean(ObjectMapper.class);
    }

    public static String writeValueAsString(Object o) throws JsonProcessingException {
        return mapper.writeValueAsString(o);
    }
}
