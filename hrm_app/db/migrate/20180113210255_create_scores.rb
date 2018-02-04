class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :plan, null: false
      t.integer :design, null: false
      t.integer :clerk, null: false
      t.integer :total_score, null: false
      t.string  :judgment, null: false
      
    end
  end
end
