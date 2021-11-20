<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div id="list-expense" class="content scaffold-list" role="main">

    <ul class="navbar ml-auto">
        <li class="nav-item nav-link text-uppercase">Statement of Account for ${user.name}</li>
        <li class="nav-item nav-link text-uppercase">Initial Balance : R${user.initialBankBalance}</li>
    </ul>

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table class="table-bordered table-striped ">
        <tr>
            <th>Date of transaction</th>
            <th>Expense</th>
            <th>Amount(Rand)</th>
            <th>Amount(USD)</th>
            <th>Running balance</th>
        </tr>
        <g:each var="expense" in="${user.expenses}">
         <tr>
             <td>${expense.dateCreated}</td>
             <td>${expense.description}</td>
             <td>${expense.amount}</td>
             <td>${expense.convertedAmount}</td>
             <td>${expense.runningBalance}</td>
         </tr>
        </g:each>
    </table>

    <div class="pagination">
        <g:paginate total="${expenseCount ?: 0}" />
    </div>
    <br>
    <div class="buttons text-center">
        <g:link controller="expense" action="downloadCSV" id="${user.id}" >Download CSV</g:link>
    </div>
</div>
</body>
</html>