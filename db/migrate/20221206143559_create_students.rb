class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :image
      t.string :bio
      t.string :sun_sign
      t.string :social
      t.integer :cohort_id
    end
  end
end
