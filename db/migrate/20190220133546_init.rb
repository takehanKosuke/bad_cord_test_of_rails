class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :pv, null: false, default: 0

      t.integer :user_id, null: false
      t.timestamps
    end
  end
end

# どこだろう？ schema見ても多分同じ