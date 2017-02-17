package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Result {

    public void applyResult(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
