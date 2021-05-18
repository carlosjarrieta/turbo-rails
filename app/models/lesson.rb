class Lesson < ApplicationRecord
  belongs_to :course

  validates_presence_of :title, message: "Ingrese el nombre"
  validates_presence_of :content, message: "can't be blank"
end
