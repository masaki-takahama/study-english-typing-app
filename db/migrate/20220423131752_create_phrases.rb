class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.integer    :tag_id,  null: false
      t.string     :text,    null: false
      t.string     :meaning, null: false
      t.references :user,    null: false, foreign_key: true

      t.timestamps
    end
  end
end
