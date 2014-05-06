class Stock < ActiveRecord::Base
	has_many :prices

	has_many :volumes

	has_many :rsis

	has_many :smas
end
