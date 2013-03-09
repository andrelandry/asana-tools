class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :asana_id
      t.date :due_on

      t.timestamps
    end
  end
end
