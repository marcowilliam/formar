<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="freelancer"/>
        <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       <div class="container" style="padding-top:10%;">
        <g:if test="${courseList}">
            <div class="row">
            <g:each status="i" in="${courseList}" var="course">
            
                <div class="col-sm-4 col-md-3">
                <div class="thumbnail">
                
                <div class="caption">
                <h3 style="text-align:center">${course.name}</h3>
                <p>${course.professor}</p>
                <p>${course.description}</p>
                <a href="/course/show/${i+1}"> Ver </a>
            </g:each>
               
                </div>
                </div>
                </div>
        </g:if>
        <g:else>
        </div>
            <center>
            <div class="row">
            
            <div class="alert alert-info" role="alert" style="width:100%;">
             Você não tem nenhuma matéria cadastrada
            </div>
      
            </div>
            </center>
        </g:else>

      

        <g:link class="create" action="create"><g:message code="Adicionar Matéria" args="[entityName]" /></g:link>
        
    
    </body>
</html>