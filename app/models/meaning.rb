class Meaning < ApplicationRecord
  belongs_to :vocabulary
  has_many :examples
end
