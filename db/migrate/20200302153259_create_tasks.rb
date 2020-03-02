class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, comment: "名称"
      t.text :description, null: true, comment: "詳しい説明"

      t.timestamps
    end
  end
end
