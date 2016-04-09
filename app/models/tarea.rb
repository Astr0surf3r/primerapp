class Tarea < ActiveRecord::Base

belongs_to :user

validates :contenido, presence: :true
end
