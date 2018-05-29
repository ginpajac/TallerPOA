public aspect Tiempo {	
	long startTime;
    pointcut callTiempo(): call(* HelloAspectJDemo.greeting() ); 
    
    before() : callTiempo() {
    	startTime = System.currentTimeMillis();
    } 
    after() : callTiempo()  {
    	long estimatedTime = System.currentTimeMillis() - startTime;
    	System.out.println("\nTiempo: "+ estimatedTime +" segundos");
    }  
}  
