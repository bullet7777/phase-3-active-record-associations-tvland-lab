class Actor < ActiveRecord::Base
    has_many :characters,
    :class_name =>"Character",
    :foreign_key => :actor_id

    has_many :shows,
     :through => :characters

     def full_name
        "#{self.first_name} #{self.last_name}"
    
     end
     def list_roles
        self.characters.map{|character| "#{character.name} - #{character.show.name}"}

     
     end
   
end