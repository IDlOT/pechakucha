class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :japanese
      t.string :english

      t.timestamps
    end
  end
end
