class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.integer :role_id
      t.string :actor 
      t.string :location
      t.integer :phone
      t.boolean :hired
    end
  end
end
