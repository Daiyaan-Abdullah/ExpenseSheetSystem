<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       
        <div id="list-expense" class="content scaffold-list table-bordered"  role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table  collection="${expenseList}" />

            <div class="pagination">
                <g:paginate total="${expenseCount ?: 0}" />
            </div>
        </div>

    </body>
</html>