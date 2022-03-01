class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck :actor
    end

    def locations
        self.auditions.pluck :location
    end

    def lead
        found = self.auditions.find_by(hired: true)
        return 'no actor has been hired for this role' unless found
        found
    end

    def understudy
        second = self.auditions.where(hired: true)[1]
        # second = self.auditions.where(hired: true).second
        # can also use ternary
        # EX. second ? second : 'no actor has been hired for understudy for this role'
        return  'no actor has been hired for understudy for this role' unless second
        second
    end
end