class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :name, { null: false }
      t.string :email, { null: false }
      t.string :password_digest, { null: false }

      t.timestamps
      t.index :email, { unique: true }
    end
  end
  def down
      # 元に戻せないマイグレーションについてはraiseを宣言しておくと良い。
      # https://passingloop.hatenadiary.org/entry/20111118/writing_irreversible_migrations_on_rails
      # Goodな書き方について訴求してくれている。
      # https://stackoverflow.com/questions/4020131/rails-db-migration-how-to-drop-a-table
      raise ActiveRecord::IrreversibleMigration
  end
end
