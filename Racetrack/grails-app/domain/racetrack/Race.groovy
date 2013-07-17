package racetrack

class Race {

	String name 
	Date startDate 
	String city 
	String state 
	BigDecimal distance 
	BigDecimal cost 
	Integer maxRunners = 1000
    
		static constraints = {
		name(blank:false,maxSize:50) 
		startDate(validator:{return (it>new Date())}) 
		city() 
		state(inList:["Guj","Mh","Delhi"]) 
		distance(min:0.0,max:500.0) 
		cost(min:0.0,max:100.0) 
		maxRunners(min:0,max:10000) 
		
    }
	BigDecimal inMiles()
	{
		return distance*0.6214
	}
    
	static mapping= {
		sort "startDate"
	}
}
