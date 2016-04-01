<html>
<head>
	<meta name="layout" content="freelancer"/>
	<title><g:message code='springSecurity.login.title'/></title>
</head>

<body>
<div id="login">
	<div class="inner">
		<div class="fheader"><g:message code='springSecurity.login.header'/></div>

		<g:if test='${flash.message}'>
			<div class="login_message">${flash.message}</div>
		</g:if>
		<center>
		<div class="container" style="padding-top:10%;">
  			<h2>Login</h2>
  			<form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off" style="width:50%;">
    			<div class="form-group">
      				<label for="username"><g:message code='Usuário'/>:</label>
      				<input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username"/>
    			</div>
    			<div class="form-group">
      				<label for="password"><g:message code='Senha'/>:</label>
      				<input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password"/>
    			</div>
    			<p id="remember_me_holder">
				<input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
				<label for="remember_me"><g:message code='Permanecer conectado'/></label>
				<p>
				<g:link controller="user" action="create">Inscreva-se</g:link>
			</p>

			<p>
				<input type="submit" class="btn btn-default" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
			</p>
    			</form>
    	</div>
  			
  			</center>
	</div>
</div>
<script>
(function() {
	document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
})();
</script>
</body>
</html>