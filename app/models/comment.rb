class Comment < ActiveRecord::Base
  has_many :votes, as: :votable
  belongs_to :users

  def comment_author
    user = User.find(self.user_id)
    user.user_name
  end
end