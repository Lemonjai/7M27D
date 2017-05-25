class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
