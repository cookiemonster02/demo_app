class CreateAssignmentHistories < ActiveRecord::Migration
  def change
    create_table :assignment_histories do |t|
      t.string :assignment, null: false
      t.date :start_date, null: false
    end
  end
end
