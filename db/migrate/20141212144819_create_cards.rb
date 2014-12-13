class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references  :deck
      t.string   :question
      t.string   :answer
      t.integer  :point_value || 1

      t.timestamps
    end
  end
end
