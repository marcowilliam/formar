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
                <p>Professor(a): ${course.professor}</p>
            
                <a href="/course/show/${course.id}"> Ver </a>
                </div>
                </div>
                </div>
            </g:each>
               
                
                
        </g:if>
        <g:else>
         
            <div class="row">
            
            <div class="alert alert-info" role="alert" style="width:100%;">
             Você não tem nenhuma matéria cadastrada
            </div>
      
            </div>
            
        </g:else>
        </div>
        <div class="row">
        <center>
        <a class="btn btn-primary btn-sm" href="/course/create" role="button">Adicionar matéria</a>
        </center>
        </div>
        </div>
        
        
    
    </body>
</html>