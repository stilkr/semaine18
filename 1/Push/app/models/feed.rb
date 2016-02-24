class Feed < ActiveRecord::Base
    belongs_to :app
    
    before_create do 
        require "securerandom"
        self.push_date = DateTime.now
    end
end
