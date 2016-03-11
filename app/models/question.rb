class Question < ActiveRecord::Base
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_many :answers
  belongs_to :user

  def vote_totals
    self.votes.count
  end

  def answer_totals
    self.answers.count
  end

  def author
    user = User.find(self.user_id)
    user.user_name
  end
end