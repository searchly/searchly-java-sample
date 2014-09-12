<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp"/>

<div class="container">
    <div class="page-header">
        <h1>
            Search Results</h1>
    </div>

    <div class="row">
        <div class="span12">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>
                        Author
                    </th>
                    <th>
                        Content
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${articles}" var="article">
                    <tr>
                        <td>${article.author}</td>
                        <td>${article.content}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<c:import url="layout/footer.jsp"/>