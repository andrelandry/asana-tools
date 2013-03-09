class Project < ActiveRecord::Base
  
  
  
  has_many :tasks
  
  def fetch_tasks
    rest = RestClient::Resource.new(API_URL,API_KEY)
    
    response = rest["projects/#{self.asana_id}/tasks"].get
    
    response = JSON.parse(response)
    
    response['data'].each do |task|
      self.tasks.new(name: task['name'], asana_id: task['id'])
    end
  end
end
