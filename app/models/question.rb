class Question < ActiveRecord::Base
  has_many :votes, as: :votable,  dependent: :destroy
  belongs_to :user
  has_many :comments, as: :commentable

  has_many :answers, dependent: :destroy
end