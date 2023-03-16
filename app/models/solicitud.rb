class Solicitud < ApplicationRecord
belongs_to :dproducto
has_many :laminas
end
