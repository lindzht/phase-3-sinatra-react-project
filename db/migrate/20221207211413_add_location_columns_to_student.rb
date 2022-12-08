class AddLocationColumnsToStudent < ActiveRecord::Migration[6.1]
  def change

    add_column :students, :city_state, :string
    add_column :students, :country, :string

  end
end
