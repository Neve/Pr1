class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :title, :uniqueness => true

  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

  validates :image_url, :format => {
  :with => %r{\.(gif|jpg|png|jpeg)$}i,
  :message => 'Должна быть GIF, JPG  или PNG картинка.'  }

  #store backend
  default_scope :order => 'title'
end
