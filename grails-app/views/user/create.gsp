<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="landing" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="global-wrapper">
            <div id="content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-8 col-md-8 col-lg-6 mx-auto">
                            <h1 class="text-center login-title text-uppercase">Expense Sheet System Login</h1>
                            <div class="account-wall">
                                <g:img dir="images" file="grails.svg" class="profile-img"/>
                                <g:form resource="${this.user}" method="POST" class="form-signin">
                                    <f:field bean="user" property="name" class="form-control"/>
                                    <f:field bean="user" property="initialBankBalance" class="form-control"/>
                                    <br>
                                    <g:submitButton class=" btn btn-lg btn-primary btn-block" name="login" value="Login"/>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
