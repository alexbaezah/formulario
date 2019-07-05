class Sale < ApplicationRecord
    validates :cod, uniqueness: true
    validates :cod, presence: true #{ message: 'Es necesario el código de la venta'  }
    validates :category, inclusion: { in: %w[uno dos tres cuatro cinco] }
    validates :value, numericality: { greater_than_or_equal_to: 0 }
    validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 40, message: "El descuento debe ser 37% máximo" }
  end