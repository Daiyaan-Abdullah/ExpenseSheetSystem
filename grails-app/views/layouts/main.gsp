<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>
            <g:layoutTitle default="Grails"/>
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
        <asset:stylesheet src="application.css"/>

        <g:layoutHead/>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-main navbar-expand-lg navbar-dark ">
                <a class="navbar-brand" href="#">Grails Expense Sheet System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/expense/create">Transactions</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/expense/index">View All Transactions</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/index">Statement</a>
                        </li> 
                    </ul>
                </div>      
            </nav>
        </header>

        <main role="main" >
            <g:layoutBody />
        </main>
        

        <div class="footer-main fixed-bottom" role="contentinfo"></div>
            <div id="spinner" class="spinner" style="display:none;">
                <g:message code="spinner.alt" default="Loading&hellip;"/>
            </div>
        </div>

        <asset:javascript src="application.js"/>

    </body>
</html>


