class AddImgUrlToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :textContent, :text
    add_column :contents, :imgUrl, :string
  end
end
