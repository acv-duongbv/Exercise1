class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :arrange
      t.string :url
      t.integer :liked
    end
  end
end
