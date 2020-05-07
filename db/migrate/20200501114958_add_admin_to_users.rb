class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def up
    # add_columnを利用するとカラムを追加することができる。
    add_column :users, :admin, :boolean, defult: false, null: false
  end
  def down
    # remove_columnを利用するとカラムを削除することができる。カラムを削除するには、テーブル名と、カラム名と型を指定する必要がある。
    remove_column :users, :admin, :boolean
  end
end
