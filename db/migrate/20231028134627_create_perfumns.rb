class CreatePerfumns < ActiveRecord::Migration[7.1]
  def change
    create_table :perfumns do |t|
      t.string :description
      t.decimal :price
      t.string :quality
      t.text :review
      t.string :url_image

      t.timestamps
    end
  end
end
