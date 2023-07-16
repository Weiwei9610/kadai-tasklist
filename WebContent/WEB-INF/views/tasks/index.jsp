<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="Task" items="${tasks}">
                <li><a
                    href="${pageContext.request.contextPath}/show?id=${Task.id}"> <c:out
                            value="${Task.id}" />
                </a> : <c:out value="${Task.title}" /> &gt; <c:out
                        value="${Task.content}" />
            </c:forEach>
        </ul>

        <p>
            <a href="${pageContext.request.contextPath}/new">新規タスクの投稿</a>
        </p>

    </c:param>
</c:import>