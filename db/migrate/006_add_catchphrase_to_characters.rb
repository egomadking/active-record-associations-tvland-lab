class AddCatchphraseToCharacters <ActiveRecord::Migration[5.1]
  def change
    change_table :characters do |t|
      t.string :catchphrase
    end
  end
end