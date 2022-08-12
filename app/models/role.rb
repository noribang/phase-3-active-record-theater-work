class Role < ActiveRecord::Base
    # plural
    has_many :auditions

    # returns all of the auditions associated with this role
    def auditions
        self.auditions
    end

    # returns an array of names 
    # from the actors associated with this role
    def actors
        self.actor
    end

    # returns an array of locations
    # from the auditions associated with this role
    def locations
        self.auditions.role
    end

    # returns the first instance of the audition that 
    # was hired for this role or returns a string 
    # 'no actor has been hired for this role' 
    def lead
        self.auditions do |audition|
            if audition.hired == true
                audition
            end
        end

        'no actor has been hired for this role'
    end

    # returns the second instance of the audition that 
    # was hired for this role or returns a string 
    # 'no actor has been hired for understudy for this role'
    def understudy
        counter = 0

        self.auditions do |audition|
            if audition.hired == true
                # audition.second
                is_hired = audition
                counter += 1
                if counter == 2
                    return is_hired
                end
            end
        end

        'no actor has been hired for understudy for this role'
    end

end