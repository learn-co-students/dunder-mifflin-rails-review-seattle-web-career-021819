class AddingDogIdToEmployee < ActiveRecord::Migration[5.1]
  add_column :employees, :dog_id, :integer 
end
