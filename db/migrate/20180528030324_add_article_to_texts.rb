class AddArticleToTexts < ActiveRecord::Migration[5.2]
  def change
    add_reference :texts, :article, foreign_key: true
  end
end
