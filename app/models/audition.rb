class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        # self.hired = true
        # self.save
        # you need to save for it to persist in the database
        # update will knock out two birds with one stone

        self.update(hired: true)
    end
end