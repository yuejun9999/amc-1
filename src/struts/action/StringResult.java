package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StringResult implements Result {

    private String string;

    public StringResult(String string) {
        this.string = string;
    }

    public void applyResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        response.addHeader("Content-Type", "application/json");
        response.getOutputStream().write(string.getBytes("utf-8"));
        response.getOutputStream().flush();
    }
}
