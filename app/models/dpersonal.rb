class Dpersonal < ApplicationRecord
  has_many :dproductos, dependent: :delete_all
  has_many :solicituds, through: :dproductos, dependent: :delete_all

  #ojo aqui es en plural, en el otro es en singular

  validates :cedula, presence: true
  validates :nombre, presence: true
  #validate :genero, presence: true
  validates :email, presence: true
  validates :pais, presence: true
  validates :departamento, presence: true
  validates :ciudad, presence: true
  validates :direccion, presence: true
end
