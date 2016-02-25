#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class Project

    # TODO: 
    # @return [String]
    attr_accessor :name

    # TODO: 
    # @return [Numeric]
    attr_accessor :source_language

    # TODO: 
    # @return [Numeric]
    attr_accessor :content_type

    # TODO: 
    # @return [String]
    attr_accessor :organization_id

    # TODO: 
    # @return [Array<Numeric>]
    attr_accessor :target_languages

    # TODO: 
    # @return [Array<MilestoneLanguage>]
    attr_accessor :milestones

    # TODO: 
    # @return [Array<StringFile>]
    attr_accessor :string_files

    
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
      hash['name'] = self.name
      hash['source_language'] = self.source_language
      hash['content_type'] = self.content_type
      hash['organization_id'] = self.organization_id
      hash['target_languages'] = self.target_languages
      hash['milestones'] = self.milestones
      hash['string_files'] = self.string_files
      hash
    end

  end
end