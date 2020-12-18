class Cin < ApplicationRecord
  has_many :histories
  validates :number, format: { with: /\A[ULul]\d{5}\w{2}\d{4}\w{3}\d{6}+\z/, message: "only allows letters" }
  #U74999HR2014PTC053030
end
