class Employee < ApplicationRecord
  belongs_to :dog

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def to_s
    self.first_name + " " + self.last_name
  end
end
