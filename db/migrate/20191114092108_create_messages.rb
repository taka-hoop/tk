class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :title
      t.text :content
      t.text :image
      t.timestamps
    end
  end
end
