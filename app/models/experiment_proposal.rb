class ExperimentProposal < ApplicationRecord
  belongs_to :user
  has_many :experiments, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :observations, as: :observable

  validates :title, :summary, :hypothesis, :status, :user_id, :presence => true
end
