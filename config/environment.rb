# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AsanaTools::Application.initialize!

API_URL = "https://app.asana.com/api/1.0"

API_KEY = "" #Asana API key can be found here http://app.asana.com/-/account_api
