module Remarkt
  class Unit
    include Mongoid::Document
    include Mongoid::Timestamps

    field :vin, type: String
    field :make, type: String
    field :model, type: String
    field :year, type: String

  end
end