class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds  do |t|
      t.references  :user
      t.references  :deck
      t.boolean     :user_completed?

      t.timestamps
    end
  end
end
