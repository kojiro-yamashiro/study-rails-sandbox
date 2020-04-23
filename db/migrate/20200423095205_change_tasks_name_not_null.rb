class ChangeTasksNameNotNull < ActiveRecord::Migration[6.0]
  def change
    # change_column_nullメソッドを利用すると既存のテーブルの既存のカラムに対してnot null制約を付けたり外したりすることができる。
    change_column_null :tasks, :name, false
  end
end
