class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :date, null: false
      t.string :time
      t.string :name
      t.integer :difficulty, null: false
    end
  end
end