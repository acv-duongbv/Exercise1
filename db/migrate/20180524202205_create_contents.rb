class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :headline
      t.integer :arrange
      t.string :url_img
      t.text :text_content
      t.string :type
    end
  end
end
