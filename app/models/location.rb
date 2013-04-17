class Location < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :email, :endereco, :fone

  geocoded_by :endereco
 
  after_validation :geocode

   acts_as_gmappable :process_geocoding => false
end
