class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address
  has_many :products

  accepts_nested_attributes_for :address

  reg_kana = /\A[ァ-ヴ]+\z/

  validates :nickname, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :password, length: { in: 6..128 }, allow_blank: true
  validates :phone_number, presence: true
  validates :kanji_surname, presence: true
  validates :kanji_name, presence: true
  validates :kana_surname, format: { with: reg_kana }, presence: true
  validates :kana_name, format: { with: reg_kana }, presence: true

  def with_address
    build_address if address.nil?
    self
  end

end
