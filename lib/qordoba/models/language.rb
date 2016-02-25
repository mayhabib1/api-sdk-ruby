#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class Language

    # TODO: 
    # @return [Numeric]
    attr_accessor :id

    # TODO: 
    # @return [Array<User>]
    attr_accessor :users

    
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
      hash['users'] = self.users
      hash
    end

  end
end