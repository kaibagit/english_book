class Example < ApplicationRecord
  belongs_to :meaning

  before_save :default_values
  def default_values
    self.proficiency ||= 0
  end
end
