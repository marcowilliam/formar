<html>
<head>
  <title>POP - User Registration</title>
  <meta name="layout" content="freelancer"/>
</head>
<body>


<container>
    <div class="container" style="padding-top:10%;">
        <h2>Cadastro</h2>
        <g:form url="[action:'create',controller:'user']">
          <div class="form-group">
              <label for="name"><g:message code='Nome'/>:</label><br/>
              <g:textField name="name" value="${user?.name}"
        class="${hasErrors(bean:user,field:'name','errors')}"/>
          </div>
          <div class="form-group">
              <label for="username"><g:message code='Usuário'/>:</label><br/>
              <g:textField name="username" value="${user?.username}"
        class="${hasErrors(bean:user,field:'username','errors')}"/>
          </div>
          <div class="form-group">
              <label for="password"><g:message code='Senha'/>:</label><br/>
              <g:passwordField name="password"
        class="${hasErrors(bean:user,field:'password','errors')}" />
          </div>
           <div class="form-group">
              <label for="confirm"><g:message code='Confirmar senha'/>:</label><br/>
              <g:passwordField name="confirm"
        class="${hasErrors(bean:user,field:'password','errors')}" />
          </div>
          
      <p>
      <g:submitButton class="btn btn-default" name="submitButton" value="Create Account" />
      </p>
          </form>
      </div>
        </fieldset>
        </container>

  
    
    
    <p>
    <p class="button">
      <label>&nbsp;</label>
      
    </p>
  
</g:form>
</body>
</html>