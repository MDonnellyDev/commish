class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :day
      t.boolean :game_on

      t.timestamps
    end

    create_table :games_ballers do |t|
      t.belongs_to :game
      t.belongs_to :part
    end
  end
end
