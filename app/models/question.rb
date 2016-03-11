class Question < ActiveRecord::Base
  has_many :votes, as: :votable  has_many :votes, as: :votable,  dependent: :destroy
  has_many :comments, as: :commentable
  has_many :answers
  belongs_to :user
end