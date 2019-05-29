class CreateRelatedWordAndVocabularies < ActiveRecord::Migration[5.2]
  def change
    create_table :related_word_and_vocabularies do |t|
      t.integer :related_word_id
      t.integer :vocabulary_id

      t.timestamps
    end
  end
end