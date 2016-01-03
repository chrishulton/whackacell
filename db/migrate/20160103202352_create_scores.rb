class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :user
      t.integer :points

      t.timestamps null: false
    end
  end
end
