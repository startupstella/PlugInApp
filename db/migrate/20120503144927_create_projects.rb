class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :skill
      t.string :duration

      t.timestamps
    end
  end
end
