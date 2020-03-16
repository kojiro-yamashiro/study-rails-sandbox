class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :title, null: false, comment: '夢のタイトル'
      t.text :description, null: false, comment: '詳しい夢の説明'

      t.timestamps
    end
  end
end
