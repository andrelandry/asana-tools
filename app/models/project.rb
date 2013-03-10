class Project < ActiveRecord::Base
  
  has_many :tasks
  
  def fetch_tasks
    rest = RestClient::Resource.new(API_URL,API_KEY)
    
    response = rest["projects/#{self.asana_id}/tasks"].get
    
    response = JSON.parse(response)
    
    #resets tasks
    self.tasks.delete_all
    
    response['data'].each do |task|
      self.tasks.create(name: task['name'], asana_id: task['id'], due_on: task['due_on'])
    end
  end
  
end
