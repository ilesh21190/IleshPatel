package guestbook

class User {
	String name
	String email
	String webpage
	static mapping=
	{
		table "MyUser"
	}
    static constraints = {
		name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+") 
  email (email:true)
  webpage (url:true)
    }
	String toString(){
    return name; 
  }
}
