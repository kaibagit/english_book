class CreateRelatedWords < ActiveRecord::Migration[5.2]
  def change
    create_table :related_words do |t|
      t.string :name

      t.timestamps
    end
  end
end