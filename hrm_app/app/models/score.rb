class Score < ActiveRecord::Base
  validates :plan, presence: true,numericality: true
  validates :design, presence: true,numericality: true
  validates :clerk, presence: true,numericality: true
  validates :total_score, presence: true,numericality: true
  validates :Judgment, presence: true, absence: true
end   