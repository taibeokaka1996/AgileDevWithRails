class Product < ApplicationRecord
    ## presence: kiểm tra xem thông tin có nào bỏ trống không?
    validates :title, :description, :image_url, presence:{
        message: 'Title, Description, and image URL fields arent empty'
    }


    validates :price, numericality: {
        greater_than_or_equal_to: 0.01,
        message: 'The price is a valid number not less than $0.01.'
    }

    ## uniqueness : kiểm tra xem title có trùng nhau không
    validates :title, uniqueness: {
        message: 'The title is unique among all products'    
    }
    validates :image_url, allow_blank: true, format:{
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image'
    }
end
