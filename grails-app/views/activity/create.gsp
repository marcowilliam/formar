<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="freelancer" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <center>
        <div id="create-activity" class="content scaffold-create" role="main" style="padding-top: 15%">
            <g:if test="${flash.message}">
            <div class="message" role="status">
                <span class="label label-warning">${flash.message}</span>
            </div>
            </g:if>
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:hasErrors bean="${this.activity}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.activity}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:all bean="activity"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
        </center>
    </body>
</html>
