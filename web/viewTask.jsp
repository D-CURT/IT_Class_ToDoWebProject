<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>View Task</title>
    <script type="text/javascript" src="Content/JS/sendChangedData.js"></script>
</head>
<body>
    <form action="edit" name="editForm" method="get">
        <input type="hidden" name="<%=Constants.KEY_PARAM_EDIT%>" value="">
        <input type="hidden" name="<%=Constants.PARAM_ID_TASK%>" value="">
        <c:choose>
            <c:when test="${not empty listTask}">
                <table border="1px">
                    <tr><td align="center">*</td><td>Title</td><td>Date</td><td></td></tr>
                    <c:forEach items = "${listTask}" var = "task">
                        <tr>
                            <td><input type="checkbox" name="<%=Constants.KEY_PARAM_EDIT_CHECK%>" value="${task.id}"></td>
                            <td><c:out value="${task.titleTask}"></c:out></td>
                            <td><c:out value="${task.dateTask}"></c:out></td>
                            <td><input type="button" value="View/Edit" onclick="JavaScript:sendViewData(${task.id},'view')"></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                You have no tasks here.
            </c:otherwise>
        </c:choose>
    </form>
</body>
</html>