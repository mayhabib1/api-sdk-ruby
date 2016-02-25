#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba 
  class Configuration

    # The base Uri for API calls
    @BASE_URI = "https://developers.qordoba.com"

    # The username to use with basic authentication
    @basic_auth_user_name = "TODO: Replace"

    # The password to use with basic authentication
    @basic_auth_password = "TODO: Replace"


    # create the getters and setters
    class << self
      attr_accessor :BASE_URI

    end
  end
end
