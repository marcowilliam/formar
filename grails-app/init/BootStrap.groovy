import formar.*

class BootStrap {

    def init = { servletContext ->
    
    	def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
    	def user = User.findOrSaveWhere(username: 'marcowilliamdf@gmail.com', password: 'admin')

    	if( !user.authorities.contains(adminRole)){

    		UserRole.create(user,adminRole,true)
    	}
    }
    def destroy = {
    }
}
