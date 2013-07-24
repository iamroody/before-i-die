class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :content
      t.integer :column
      t.integer :row
      t.references :board

      t.timestamps
    end
  end
end
