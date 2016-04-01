<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="freelancer"/>
        <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="jumbotron">
    
            <div class ="row" style="padding-top:5%">
                <center>
                 <h1><g:message code="${course.name}" args="[entityName]" /></h1>
  
                <p>
                <strong>Professor:</strong>
                ${course.professor}
                </p>

                <p>
                <strong>Descrição:</strong>
                ${course.description}
                </p>
                </center>
            </div>
        </div>
        
            <g:form resource="${this.course}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.course}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>

            <div class="container" style="padding-top:10%;">
            <g:if test="${course.activities}">
            <div class="row">
            <g:each status="i" in="${course.activities}" var="activity">
            
                <div class="col-sm-4 col-md-3">
                <div class="thumbnail">
                
                <div class="caption">
                <h3 style="text-align:center">${activity.name}</h3>
                <p>${activity.description}</p>
                <p>Deadline: ${activity.endDate}</p>
                </div>
                </div>
                </div>
            </g:each>
               
                
                
        </g:if>
        <g:else>
         
            <div class="row">
            
            <div class="alert alert-info" role="alert" style="width:100%;">
             Nenhuma atividade para essa matéria
            </div>
      
            </div>
            
        </g:else>
        </div>
        <div class="row">
        <center>
        <a class="btn btn-primary btn-sm" href="/activity/create" role="button">Adicionar atividade</a>
        </center>
        </div>
        </div>

    </body>
</html>
