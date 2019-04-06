class AddVocabularyIdToMeaning < ActiveRecord::Migration[5.2]
  def change
    add_column :meanings, :vocabulary_id, :intege
  end
end
