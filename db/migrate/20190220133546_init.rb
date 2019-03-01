class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :status, null: false

      t.integer :category_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name, null:false

      t.timestamps
    end
  end
end
