class CreatePhrases < ActiveRecord::Migration[5.2]
	def change
		create_table :phrases do |t|
			t.integer :word_id
			t.integer :phrase_id

			t.timestamps
		end
	end
end