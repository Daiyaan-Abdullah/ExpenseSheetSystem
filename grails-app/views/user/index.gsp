<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       
       <div id="list-user" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <td>Name</td>
                        <td> Initial Bank Balance</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                <g:each var="user" in="${userList}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.initialBankBalance}</td>
                        <td> <g:link controller="expense" action="statement" id="${user.id}" >[View Statement]</g:link></td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${userCount ?: 0}" />
            </div>

    </body>
</html>


