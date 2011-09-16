require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "имя товара должно быть уникальным - i18n" do
    product = Product.new(
        :title       => products(:ruby).title,
        :description => "yyy",
        :price       => 1,
        :image_url   => "fred.gif")
    assert !product.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'),
                 product.errors[:title].join('; ')
  end
  test "поля товара не должны быть пустыми" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

    test "Цена товара должна быть положительной" do
      product = Product.new( :title        => "Название книги",
                             :description  => "Описание книги",
                             :image_url    => "rails.png")
      product.price = -1
        assert product.invalid?
        assert_equal "must be greater than or equal to 0.01", product.errors[:price].join('; ')

      product.price = 0
        assert product.invalid?
        assert_equal "must be greater than or equal to 0.01", product.errors[:price].join('; ')

      product.price = 1
        assert product.valid?

    end

    def new_product(image_url)
     Product.new(:title        => "Название книги",
                 :description  => "Описание книги",
                 :price        => 1,
                 :image_url    => "rails.png")
    test "image url" do
      ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
                http://a.b.c/x/y/z/gred.gif }
      bad = %w{ fred.doc fred.gif/more fred.gif.more }
      ok.each do |name|
        assert new_product(name).valid?, "#{name} должно быть правильным"
      end
      bad.each do |name|
        assert new_product(name).valid?, "#{name} вероятно не правильное"
      end
    end
  end

end