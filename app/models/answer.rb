class Answer < ActiveRecord::Base
  has_many :votes, as: :votable,  dependent: :destroy
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :question

  def 

end