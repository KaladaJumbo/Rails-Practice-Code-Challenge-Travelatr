class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


    def featured_post

        self.posts.max_by {|post| post.likes}

    end


    def average_blogger_age

        sum = self.bloggers.sum {|blogger| blogger.age}

        sum.to_f / self.bloggers.count

    end


end
