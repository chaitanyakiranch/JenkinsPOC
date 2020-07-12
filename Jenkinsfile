pipeline {
    agent any

    stages {
	
	// Cleanup the workspace before the build
	
			stage('Workspace Cleanup'){
			
				steps{
				 
				 cleanWs()
				
				}
			}

	// Clone git repo for spring boot app spring-petclinic			
        
			stage('SCM Checkout'){
			
				steps{
				 
				 sh "git clone https://github.com/spring-projects/spring-petclinic"
				
				}
	   
			} 

	// Compile the code with Maven
			
			stage ('Compile Stage') {

				steps {
				
					sh "cd spring-petclinic && ./mvnw package"
//					sh "java -jar target/*.jar"			
		
				}
			}		
        
     
        }
		
//		post {
//			always {
//				cleanWs()
//			}		
//		}
 }