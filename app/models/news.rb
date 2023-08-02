class News < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_one_attached :image
    
        def to_param
        "#{id}-#{title.parameterize}"
        end
    end
    
    
    
    
    
    
