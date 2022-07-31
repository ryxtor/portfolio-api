class Project < ApplicationRecord
  has_and_belongs_to_many :skills
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :github_link, presence: true
  validates :live_demo, presence: true
end
