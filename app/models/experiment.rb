class Experiment < ApplicationRecord
  belongs_to :experiment_proposal
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :observations, as: :observable
  has_many :procedures

  validates :user, :status, :experiment_proposal, :presence => true
end
