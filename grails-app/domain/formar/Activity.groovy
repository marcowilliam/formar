package formar

class Activity {

	String name
	Date endDate
	String description
	Boolean done
	Course course
	

    static mapping = {
       description  sqlType: 'text'
    }

    static constraints = {
    	name balnk: false
    	endDate blank: false
    	description blank: false
    }
}
