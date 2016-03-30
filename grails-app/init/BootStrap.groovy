import formar.*

class BootStrap {

    def init = { servletContext ->
    
    	
    	def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
    	Role.findOrSaveWhere(authority: 'ROLE_USER')
    	def user = User.findOrSaveWhere(username: 'marcowilliam', password: 'admin', name: "Marco")

    	if( !user.authorities.contains(adminRole)){

    		UserRole.create(user,adminRole,true)
    	}
    }
    def destroy = {
    }
}
