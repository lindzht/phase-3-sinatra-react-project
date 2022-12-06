class UpdateCohortColumnnameRegion < ActiveRecord::Migration[6.1]
  def change

    rename_column :cohorts, :name, :region
  
  end
end
