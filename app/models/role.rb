class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.actor.pluck :name
    end

    def locations
        auditions.locations.pluck :location
    end

    def lead
        if self.find_by(true)
            auditions.actor
        else 
            puts "no actor has been hired for this role"
        end
    end

    def understudy
        if self.scan(true).count == 1
            auditions.actor
        else 
            puts "no actor has been hired for understudy for this role"
        end
    end
end