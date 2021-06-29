class BlogPost < ApplicationRecord
   validates :title, presence: true
   validates :content, presence: true
   validates :content, uniqueness: true
   validates :title, uniqueness: true
end
