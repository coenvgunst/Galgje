class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :word
      t.boolean :gave_up, default: false
      t.integer :strikes, default: 0
      t.integer :max_strikes, default: 8
      t.boolean :gamestate, default: 0
      t.integer :guesses, default: 0

      t.timestamps
    end
  end
end
