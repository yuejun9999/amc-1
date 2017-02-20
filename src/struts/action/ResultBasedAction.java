package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public abstract class ResultBasedAction extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Result result = execute(mapping, form, request);
        if (result == null) {
            throw new Exception("Result expected.");
        }

        result.applyResult(request, response);
        //Finally, we don't want Struts to execute the forward
        return null;
    }

    public abstract Result execute(ActionMapping mapping, ActionForm form, HttpServletRequest request) throws Exception;
}



