class AnimalSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :species_name, :diet

  # def species_name
  #   self.object.species.name
  # end

  attribute :species_name do |object|
    object.species.name
  end
end


# AnimalSerializer.new(@animal)
#
# class AnimalSerializer
#   attr_reader :object
#
#   def initialize(object)
#     @object = object
#   end
#
# end
