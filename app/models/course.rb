class Course < ApplicationRecord
  has_many :lessons

  validates_presence_of :title, on: :create, message: "Ingresa el nombre"
  validates_presence_of :description, on: :create, message: "Ingresa la direccion"
end
