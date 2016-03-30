package formar

class Course {


	String name
	String professor
	String description
	static belongsTo = [user: User]
	static hasMany = [activities: Activity]
	

	static mapping = {
       description  sqlType: 'text'
    }

    static constraints = {
    	name balnk: false
    	description blank: false
    }
}
