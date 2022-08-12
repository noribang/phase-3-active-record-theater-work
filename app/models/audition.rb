class Audition < ActiveRecord::Base
    # singular
    belongs_to :role

    #  returns an instance of role associated with this audition
    def role
        self.role
    end

    # will change the the hired attribute to true   
    def call_back
        self.hired = true
    end
end