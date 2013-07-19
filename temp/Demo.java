class Demo
{
	public static void main(String args[])
	{
		String myinput= " com.angel.admin.Base.noURLmatch = No URL matching the key" ;
		int endpos=0;
		int startpos= myinput.indexOf("noURLmatch ");
		endpos= myinput.indexOf(":",startpos);
		if(endpos<=0)
		{
				endpos=myinput.length();
				
		}
		String keyvalue= myinput.substring(startpos,endpos);
		String value= keyvalue.substring(keyvalue.indexOf("=")+1,keyvalue.length());
		System.out.println(value);                    //This is your output
	}
}