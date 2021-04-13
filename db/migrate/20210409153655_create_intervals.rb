class CreateIntervals < ActiveRecord::Migration[6.1]
  def change
    create_table :intervals do |t|
      t.datetime :date
      t.integer :focus_duration
      t.integer :break_duration
      t.integer :long_break_duration
      t.string :category
      t.boolean :on_task
      t.string :diversion, null: true
      t.text :comment, null: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
