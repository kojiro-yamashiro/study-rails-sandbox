class Task < ApplicationRecord
  # before_validationは、検証前の値の正規化に利用されることが多い。
  # 値の正規化とは、不正な値についてデフォルト値を設定するようなことを指す。
  # valid?メソッドを実行するとset_nameless_nameメソッドが呼び出される。
  before_validation :set_nameless_name

  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_comma

  private

  # 検証用のメソッドは、クラスメソッドであるvalidateメソッドにわたすことで検証時に利用することができる。
  # 検証用のメソッドの基本的な仕事は「検証エラーを発見したら、errorsにエラー内容を格納する」ということです。
  def validate_name_not_including_comma
    errors.add(:name, "にカンマを含めることはできません。") if name&.include?(',')
  end

  def set_nameless_name
    self.name = NonName.nanashi if name.blank?
  end


end
