class Lamina < ApplicationRecord
#  belongs_to :solicitud
  #has_one :solicitud
  has_one_attached :photo


  validates :lamref, presence: true
  validates :lamnombre, presence: true
end
