class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_comma

  private

  # 検証用の関数は、クラスメソッドであるvalidateメソッドにわたすことで検証時に利用することができる。
  def validate_name_not_including_comma
    errors.add(:name, "にカンマを含めることはできません。") if name&.include?(',')
  end
end
