workspace "SafeCar Platform" "Platform for smart vehicle maintenance" {

    model {
        // --- People
        visitor = person "Visitor" "Anonymous user who browses public website content and may sign up as a driver or mechanic." "Visitor"
        driver = person "Driver" "Private drivers (including taxis and delivery)"
        mechanic = person "Mechanic" "Independent and medium-sized mechanical workshops" 
        
        // --- External Services
        openAiService = softwareSystem "OpenAI Service" "External service for the use of Artificial Intelligence." "External"
        twilioService = softwareSystem "Twilio Service" "External service for sending emails." "External"
        stripeService = softwareSystem "Stripe Service" "External service for making secure online payments, managing subscriptions, and handling billing transactions for SafeCar users." "External"
        vehicleDevice = softwareSystem "Vehicle IoT Device" "Embedded hardware installed in vehicles that collects sensor data." "External"
        
        safeCarPlatform = softwareSystem "SafeCar Platform" "IoT platform for smart vehicle maintenance." {
            website = container "SafeCar Website" "Client-site safeCar application executed in the user's browser." "HTML, JavaScript and Tailwindcss v4"
            webApp = container "SafeCar Web Application" "An application where mechanics can view vehicle status data from the IoT device and schedule appointments to prevent mechanical breakdowns for drivers." "Angular v20"
            spa = container "SafeCar Single Page Application" "Web client for drivers and mechanics interacting with backend APIs." "Vue"
            
            database = container "SafeCar database" "Data persistence of our SafeCar platform" "MySQL" {
                tags "Database"
            }
            
            backend = container "SafeCar backend platform" "Backend platform that receives and sends responses based on user requests." "SpringBoot [Java 17]" {
                // --- Bounded Contexts
                iam = component "IAM BC" "Identity, authentication, authorization and access auditing." "Spring Boot" "BC"
                payments = component "Payments BC" "Plans, subscriptions, billing; integrates with Stripe." "Spring Boot" "BC"
                workshopOps = component "WorkshopOps BC" "Workshop operations + telemetry ingestion/normalization." "Spring Boot" "BC"
                devices = component "Devices BC" "IoT device lifecycle and vehicle binding." "Spring Boot" "BC"
                insights = component "Insights BC" "Risk scores, failure prediction, recommendations." "Spring Boot" "BC"
                alerts = component "Alerts BC" "Rules engine and proactive notifications." "Spring Boot" "BC"
            
                // --- Relations between Bounded Contexts.
                workshopOps -> iam "Checks authorization (RBAC)"
                devices -> iam "Checks authorization (RBAC)"
                insights -> iam "Checks authorization (RBAC)"
                alerts -> iam "Checks authorization (RBAC)"
                
                iam -> payments "Checks subscription status"

                payments -> workshopOps "Provides plan/limits"
                workshopOps -> devices "Reads device metadata"
                workshopOps -> insights "Sends normalized telemetry"
                workshopOps -> alerts "Sends operational events"
                devices -> workshopOps "Sends lifecycle events"
                insights -> alerts "Publishes risk/recommendations"
            }
            
            edge = container "SafeCar Edge" "Edge gateway that receives telemetry from the embedded device, buffers data during connectivity loss, normalizes and filters it, and securely forwards it to the backend." "Edge Runtime (Docker, MQTT/HTTPS)"
            
            mobileApp = container "SafeCar Mobile Application" "Mobile app with notifications for critical failures, efficient driving tips, and real-time status." "Flutter"
            mobileDB = container "Mobile SQLite Database" "Stores a subset of user data for performance on the mobile device (SQLite)." "SQLite" "Database"
        }
        
        // --- Context Relations
        visitor -> driver "Signs up via IAM to become a Driver"
        visitor -> mechanic "Signs up via IAM to become a Mechanic"
        driver -> safeCarPlatform "Visualize possible mechanical failures and observe car data for better control."
        mechanic -> safeCarPlatform "View vehicle status, potential mechanical issues, and schedule car maintenance appointments."
        
        visitor -> safeCarPlatform "Browses public content (landing page, plans information)"
        safeCarPlatform -> openAiService "Processes and analyzes vehicle and user data using AI models to generate insights and recommendations."
        safeCarPlatform -> twilioService "Sends transactional emails and notifications through the Twilio API."
        safeCarPlatform -> vehicleDevice "Oversees configuration, updates, and telemetry collection via the Edge gateway."

       // --- Container Relations
        visitor -> website "Visits landing page and product information"
        website -> spa "Provides entry point and redirection to the SafeCar Web Application."
        
        mobileApp -> mobileDB "Caches and retrieves local data for offline use"
        driver -> mobileApp "Receives alerts, tips, and monitors vehicle status"
        
        webApp -> spa "Serves the SPA build files to users for client-side rendering."
        spa -> backend "Calls backend APIs for core platform features."
        mechanic -> spa "Accesses platform features through the SafeCar web interface."
        
        edge -> vehicleDevice "Sends control and update messages, and receives telemetry and device status."
        backend -> edge "Manages provisioning, commands, and OTA orchestration"
        
        backend -> database "Persists and retrieves SafeCar platform data"
        backend -> openAiService "Requests AI-based analysis and recommendations"
        backend -> twilioService "Sends notifications and transactional emails"
        backend -> stripeService "Processes payments, manages subscriptions, and handles billing through Stripe APIs."
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
        
        component backend "BackendComponentIAM" {
            include iam
            include payments
            include workshopOps
            include devices
            include insights
            include alerts
            autolayout tb
        }
        
        component backend "BackendComponentPayments" {
            include payments
            include iam
            include workshopOps
            autolayout tb
        }
        
        component backend "BackendComponentWorkshopOps" {
            include workshopOps
            include devices
            include insights
            include alerts
            include iam
            autolayout tb
        }
        
        component backend "BackendComponentDevices" {
            include devices
            include workshopOps
            include iam
            autolayout tb
        }
        
        component backend "BackendComponentInsights" {
            include insights
            include workshopOps
            include alerts
            include iam
            autolayout tb
        }
        
        component backend "BackendComponentAlerts" {
            include alerts
            include workshopOps
            include iam
            include insights
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
            
            element "BC" {
                background #6e57ff
                color #ffffff
                opacity 85
            }
        }
    }

    configuration {
        scope softwaresystem
    }
}