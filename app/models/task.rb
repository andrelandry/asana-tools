class Task < ActiveRecord::Base
  
  belongs_to :project
  
  before_create :fetch_info
  
  def fetch_info
    rest = RestClient::Resource.new(API_URL,API_KEY)
    
    response = rest["tasks/#{self.asana_id}"].get
    
    response = JSON.parse(response)
    
    self.due_on = response['data']['due_on']
    
  end
end
