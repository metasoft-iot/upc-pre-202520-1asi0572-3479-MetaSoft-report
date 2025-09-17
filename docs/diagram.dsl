workspace "SafeCar Platform" "Platform for smart vehicle maintenance" {

    model {
        // --- People
        visitor = person "Visitor" "description Anonymous user who browses public website content and may sign up as a driver or mechanic." "Visitor"
        driver = person "Driver" "Private drivers (including taxis and delivery)"
        mechanic = person "Mechanic" "Independent and medium-sized mechanical workshops" 
        
        // --- External Services
        openAiService = softwareSystem "OpenAI Service" "External service for the use of Artificial Intelligence." "External"
        twilioService = softwareSystem "Twilio Service" "External service for sending emails." "External"
        
        
        safeCarPlatform = softwareSystem "SafeCar Platform" "IoT platform for smart vehicle maintenance." {
            website = container "SafeCar Website" "Client-site safeCar application executed in the user's browser." "HTML, JavaScript and Tailwindcss v4"
            webApp = container "SafeCar Web Application" "An application where mechanics can view vehicle status data from the IoT device and schedule appointments to prevent mechanical breakdowns for drivers." "Angular v20"
            backend = container "SafeCar backend platform" "Backend platform that receives and sends responses based on user requests." "SpringBoot [Java 17]"
            database = container "SafeCar database" "Data persistence of our SafeCar platform" "MySQL" {
                tags "Database"
            }
            
            mobileApp = container "SafeCar Mobile Application" "Mobile app with notifications for critical failures, efficient driving tips, and real-time status." "Flutter"
            mobileDB = container "Mobile SQLite Database" "Stores a subset of user data for performance on the mobile device (SQLite)." "SQLite" "Database"
        }
        
        // --- Relations
        
        // --- Context
        visitor -> driver "Signs up via IAM to become a Driver"
        visitor -> mechanic "Signs up via IAM to become a Mechanic"
        driver -> safeCarPlatform "Visualize possible mechanical failures and observe car data for better control."
        mechanic -> safeCarPlatform "View vehicle status, potential mechanical issues, and schedule car maintenance appointments."
        
        visitor -> safeCarPlatform "Browses public content (landing page, plans information)"
        safeCarPlatform -> openAiService "Processes and analyzes information"
        safeCarPlatform -> twilioService "Send emails by"
        
        // --- Container 
        visitor -> website "Visits landing page and product information"
        website -> webApp "Redirects visitors to the SafeCar Web Application"
       
        mobileApp -> mobileDB "Caches and retrieves local data for offline use"
        
        driver -> mobileApp "Receives alerts, tips, and monitors vehicle status"
        mechanic -> webApp "Manages vehicles and maintenance appointments"
        
        webApp -> backend "Sends user requests for diagnostics, scheduling, and data management"
        backend -> database "Persists and retrieves SafeCar platform data"
        
        backend -> openAiService "Requests AI-based analysis and recommendations"
        backend -> twilioService "Sends notifications and transactional emails"
        
        // --- Components
        
    }
    
    views {

        systemContext safeCarPlatform "SystemContext" {
            include *
            autolayout tb
        }
        Container safeCarPlatform "SystemContainer" {
            include *
            autolayout tb
        }


        styles {
         
            element "Person" {
                shape Person
                background #d1cc41
            }
            
            element "Visitor" {
                color #ffffff
                background #50ab29
            }
            
            element "Database" {
                shape cylinder
                color #ffffff
                background #e6406a
            }
            
            element "Software System" {
                color #ffffff
                background #2977ab
            }
            
            element "External" {
                color #ffffff
                background #808080
            }
            
        
        }
    }

    configuration {
        scope softwaresystem
    }
}
