class Seminar < ApplicationRecord
  validates :first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :prefecture_id, :city, :block, :building, :mail, :company_name, :company_phone, presence: true
  belongs_to :user
end