<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="freelancer"/>
        <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <center>
        <div id="create-course" class="content scaffold-create" role="main" style="padding-top:10%;">
            <g:if test="${flash.message}">
            <div class="message" role="status">
                <span class="label label-warning">${flash.message}</span>
            </div>
            </g:if>
            <h1><g:message code="Adicionar Matéria" args="[entityName]" /></h1>
            <g:hasErrors bean="${this.course}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.course}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:all bean="course"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
        </center>
    </body>
</html>
