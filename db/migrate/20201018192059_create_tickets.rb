class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :student_id
      t.text :fault

      t.timestamps
    end
  end
end
