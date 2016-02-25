#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class StringFile

    
    # @return [String]
    attr_accessor :id

    
    # @return [String]
    attr_accessor :file_name

    
    # @return [String]
    attr_accessor :file_type

    
    # @return [Array<Numeric>]
    attr_accessor :source_columns

    
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
      hash['file_name'] = self.file_name
      hash['file_type'] = self.file_type
      hash['source_columns'] = self.source_columns
      hash
    end

  end
end