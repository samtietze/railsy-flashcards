class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :guess_count, default: 0
      t.boolean :completed, default: false
      t.integer :game_id
      t.integer :card_id

      t.timestamps
    end
  end
end
