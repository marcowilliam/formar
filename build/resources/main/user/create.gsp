<html>
<head>
  <title>POP - User Registration</title>
  <meta name="layout" content="main" />
</head>
<body>
<g:form class="simpleform" url="[action:'create',controller:'user']">
  <fieldset>
    <legend>User Registration</legend>
    <p class="info">
      Complete the form below to create an account!
    </p>
    <g:hasErrors bean="${user}">
      <div class="errors">
        <g:renderErrors bean="${user}"/>
      </div>
    </g:hasErrors>
    <p>
      <label for="name">Name</label>
      <g:textField name="name" value="${user?.name}"
        class="${hasErrors(bean:user,field:'name','errors')}"/>
    </p>
    <p>
      <label for="username">Username</label>
      <g:textField name="username" value="${user?.username}"
        class="${hasErrors(bean:user,field:'username','errors')}"/>
    </p>
    <p>
      <label for="password">Password</label>
      <g:passwordField name="password"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </p>
    <p>
      <label for="confirm">Confirm Password</label>
      <g:passwordField name="confirm"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </p>
    <p>
    <p class="button">
      <label>&nbsp;</label>
      <g:submitButton class="button" name="submitButton" value="Create Account" />
    </p>
  </fieldset>
</g:form>
</body>
</html>