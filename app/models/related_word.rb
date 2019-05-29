class RelatedWord < ApplicationRecord

  has_many :related_word_and_vocabularies
  has_many :vocabularies, :through => :related_word_and_vocabularies

end