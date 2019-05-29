class Phrase < ApplicationRecord

  belongs_to :word, class_name: 'Vocabulary', :foreign_key => "word_id"
  belongs_to :word_group, class_name: 'Vocabulary', :foreign_key => "phrase_id"

end