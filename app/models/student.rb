class Student < ActiveRecord::Base
    belongs_to :cohort

    def self.find_students_by_cohort (cohort)
        self.all.where("cohort_id = ?", cohort)
    end


end