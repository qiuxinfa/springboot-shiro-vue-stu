package com.qxf.exception;

/**
 * @Auther: qiuxinfa
 * @Date: 2019/11/15
 * @Description: com.qxf.exception
 */
public class MyException extends RuntimeException{

    /**
     * 返回结果
     */
    private Object result;

    public MyException(Object result) {
        this.result = result;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
