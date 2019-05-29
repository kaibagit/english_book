class Vocabulary < ApplicationRecord

  has_many :meanings

  # 单词与词组关联
  has_many :phrases, class_name: 'Phrase', foreign_key: 'word_id'
  has_many :words, class_name: 'Phrase', foreign_key: 'phrase_id'

  # 单词之间关联
  has_many :related_word_and_vocabularies
  has_many :related_words, :through => :related_word_and_vocabularies

end
