class Answer < ActiveRecord::Base
  has_many :votes, as: :votable,  dependent: :destroy
  has_many :comments, as: :commentable
  belongs_to :question
  belongs_to :user

  def answer_author
    user = User.find(self.user_id)
    user.user_name
  end
end