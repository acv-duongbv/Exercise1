class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :arrange
      t.text :sentence
      t.integer :liked
    end
  end
end
