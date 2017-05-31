class Observation < ApplicationRecord
  belongs_to :observable, :polymorphic => true
  belongs_to :user
  has_many :comments, as: :commentable
end
