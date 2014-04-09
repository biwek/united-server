class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :wiki
      t.date :dob
      t.integer :squadno

      t.timestamps
    end
  end
end
