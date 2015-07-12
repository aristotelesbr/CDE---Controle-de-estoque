class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :sales, dependent: :destroy

end
