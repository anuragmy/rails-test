class Artice < ApplicationRecord
  validates :title , presence: true
  validates :content , presence: true
  validates :slug , presence: true, uniqueness: true

  scope :recent, -> { order(cretaed_at: :desc)}
  
end
