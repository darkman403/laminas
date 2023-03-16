class Dproducto < ApplicationRecord
  has_many :solicituds, dependent: :delete_all
  belongs_to :dpersonal

  #ojo aqui es en songular, en el otro es en plural
  validates	:cedula, presence: true
  validates	:poliza, presence: true
  validates	:valaseg, presence: true
  validates	:ciaaseg, presence: true
  validates	:estadoseg, presence: true
  validates	:pdtaseg, presence: true


end
