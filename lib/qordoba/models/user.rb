#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class User

    # TODO: 
    # @return [Numeric]
    attr_accessor :id

    
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
      hash['id'] = self.id
      hash
    end

  end
end