class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :views, default: 0, null: false
      t.references :user

      t.timestamps
    end
  end
end
