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
        <asset:stylesheet src="login.css"/>
        <g:layoutHead/>
    </head>
 
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark ">
                <a class="navbar-brand" href="#">Grails Expense Sheet System</a>
            </nav> 
        </header>

        <main role="main" >
            <g:layoutBody />
        </main>

            <div class="footer fixed-bottom" role="contentinfo"></div>
                <div id="spinner" class="spinner" style="display:none;">
                    <g:message code="spinner.alt" default="Loading&hellip;"/>
            </div>
    
        <asset:javascript src="application.js"/>
    </body>
</html>

