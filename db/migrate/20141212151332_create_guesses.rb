class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string  :input
      t.references  :user
      t.references  :card

      t.timestamps
    end
  end
end
