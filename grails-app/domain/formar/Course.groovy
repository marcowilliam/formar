package formar

class Course {

	static hasMany = [activities: Activity]
	String name
	String professor
	String description
	User user
	
	static mapping = {
       description  sqlType: 'text'
    }

    static constraints = {
    	name balnk: false
    	description blank: false
    }
}
