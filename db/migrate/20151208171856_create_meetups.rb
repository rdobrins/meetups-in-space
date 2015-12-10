class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :what, null: false
      table.string :why, null: false
      table.string :where, null: false
      table.string :when, null: false
      table.timestamps null: false
    end
  end
end
