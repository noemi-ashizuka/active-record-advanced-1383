class AddAgeToPatients < ActiveRecord::Migration[7.0]
  def change
            # table to change, name of the column, type of data 
    add_column :patients, :age, :integer
  end
end