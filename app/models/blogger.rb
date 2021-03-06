class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, presence: true, uniqueness: true 
    validates :age, presence: true, numericality: {greater_than: 2} 
    validates :bio, presence: true, length: {minimum: 30}


    def featured_post

        self.posts.max_by {|post| post.likes}

    end

    def top_5

        array = self.posts.map {|post| post.destination.id}
        array.max_by(5) { |i| array.count(i) }.uniq

    end

end
