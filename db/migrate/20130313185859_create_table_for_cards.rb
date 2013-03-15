class CreateTableForCards < ActiveRecord::Migration
  def change
    create_table :black_cards do |t|
      t.string  :text

      t.timestamps
    end

    create_table :white_cards do |t|
      t.string  :text

      t.timestamps
    end
  end
end
