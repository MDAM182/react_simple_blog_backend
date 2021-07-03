class BlogPost < ApplicationRecord
   validates :title, :content, presence: true
   validates :title, :content, uniqueness: true
end
