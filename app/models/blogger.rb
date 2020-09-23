class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, presence: true, uniqueness: true 
    validates :age, presence: true, numericality: {greater_than: 2} 
    validates :bio, presence: true, length: {minimum: 30}


    def featured_post

        self.posts.max_by {|post| post.likes}

    end

end
