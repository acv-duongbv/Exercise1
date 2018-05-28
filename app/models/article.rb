class Article < ApplicationRecord
  has_many :images
  has_many :texts

  def get_text_image_instance
    img = Image.eager_load(:articles).where(article: self)
    txt = Text.eager_load(:articles).where(article: self)
    (img + text).sort_by{|i| i.arrange}
  end

  def getContent
    self.get_text_image_instance.map{|i| i.class.name == 'Image' ? i.url : i.sentence}
  end

  def published
    !self.new_record
  end

  def finished
    published || self.create_at == DateTime.now
  end

  def addLike
    self.liked++
    self.save
  end

  def getLike
    self.liked
  end
end