<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp"/>

<div class="row">
    <div class="span12">
        <c:if test="${not empty message}">
            <div class="alert">
                    ${message}
            </div>
        </c:if>
        <div class="hero-unit">
            <h1>
                Searchly Sample Java Application.</h1>
            <br/>

            <p>This example illustrates basic search features of Searchly</p>

            <p>Click "Create Articles" on top menu, 2 sample articles will be created. </p>

            <p>To test search; enter "epic", "Drizzt" or "*" to search box at top right and hit enter. </p>

            <p>
                Sample application is using <a href="https://github.com/searchbox-io/Jest">Jest</a> Java ElasticSearch
                client
                to
                integrate with Searchly
            </p>

        </div>
    </div>
</div>

<c:import url="layout/footer.jsp"/>
