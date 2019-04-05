class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :pv, null: false, default: 0

      t.integer :user_id, null: false
      t.timestamps
    end

    create_table :users do |t|
      t.string :email, null: false, default: 0
      t.string :name, null: false
      t.integer :role, null: false
    end
  end
end
