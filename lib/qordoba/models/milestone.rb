#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class Milestone

    # TODO: 
    # @return [Numeric]
    attr_accessor :milestone_id

    # TODO: 
    # @return [String]
    attr_accessor :name

    # TODO: 
    # @return [Numeric]
    attr_accessor :order

    
    def method_missing (method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object  
    def to_json
      hash = self.key_map()
      hash.to_json
    end

    # Defines the key map for json serialization  
    def key_map
      hash = {}
      hash['milestone_id'] = self.milestone_id
      hash['name'] = self.name
      hash['order'] = self.order
      hash
    end

  end
end