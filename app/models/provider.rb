class Provider < ActiveRecord::Base
  has_many :products, dependent:  :destroy

  validates_presence_of :name, :cnpj
end
