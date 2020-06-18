<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>content（タスクの内容）一覧</h2>

        <table border="1">

            <tr>
                <th>ID</th>
                <th>content（タスクの内容）</th>
            </tr>

            <tr>
                <td><c:forEach var="task" items="${tasks}">
                        <li><a
                            href="${pageContext.request.contextPath}/show?id=${task.id}">
                                <c:out value="${task.title}" />
                        </a></li>
                    </c:forEach></td>




                <td><c:forEach var="task" items="${tasks}">
                        <li><a
                            href="${pageContext.request.contextPath}/show?id=${task.id}">
                                <c:out value="${task.content}" />
                        </a></li>
                    </c:forEach></td>
            </tr>
        </table>

        <p>
            <a href="${pageContext.request.contextPath}/new">新規タスクの登録</a>
        </p>

    </c:param>
</c:import>