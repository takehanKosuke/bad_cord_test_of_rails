class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :pv, null: false, default: 0
      t.references :user
      t.timestamps
    end
  end
end
