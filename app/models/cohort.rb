class Cohort < ActiveRecord::Base
    has_many :students

    def self.active_cohorts
        self.all.where('id > ?', 1)
    end

end