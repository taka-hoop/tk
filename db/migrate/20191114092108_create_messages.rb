class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :title
      t.text :content
      t.text :image
      t.integer :area_id
      t.integer :type_id
      t.integer :user_id
      t.timestamps
    end
  end
end
