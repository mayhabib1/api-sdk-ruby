#by Qordoba BETA v2.0 on 02/25/2016

module Qordoba
  class QordobaController

    # Initializer with authentication and configuration parameters
    def initialize(basic_auth_user_name, basic_auth_password)
        @basic_auth_user_name = basic_auth_user_name;
        @basic_auth_password = basic_auth_password;
    end

    # Creates a new project
    # @param [Project] body Required parameter: Project creation payload
    # @return void response from the API call
    def create_projects body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets an organisation's projects
    # @return mixed response from the API call
    def get_projects
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets organisation workflows
    # @return mixed response from the API call
    def get_workflow
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/workflows"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a workflow
    # @param [String] wf_id Required parameter: Your workflow ID
    # @return mixed response from the API call
    def get_workflow wf_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/workflows/{wf_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "wf_id" => wf_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets an organisation's team
    # @param [String] filter_query Required parameter: Your filter string
    # @param [String] limit Required parameter: Your pagination limit
    # @param [String] offset Required parameter: Your pagination offset
    # @return mixed response from the API call
    def get_team filter_query, limit, offset
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/team"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "filterQuery" => filter_query,
        "limit" => limit,
        "offset" => offset,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a project's workflow
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] project_id Required parameter: Your project ID
    # @return mixed response from the API call
    def get_workflow language_id, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/workflow"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "language_id" => language_id,
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets an project's feed
    # @param [String] from Required parameter: Feed source
    # @param [String] limit Required parameter: Your pagination limit
    # @param [String] project_id Required parameter: Your project ID
    # @return mixed response from the API call
    def get_workflow from, limit, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/feed"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "project_id" => project_id,
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "from" => from,
        "limit" => limit,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets project's files
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] limit Required parameter: Your pagination limit
    # @param [String] offset Required parameter: Your pagination offset
    # @param [String] project_id Required parameter: Your project ID
    # @param [String] search_string Required parameter: Your search string
    # @return mixed response from the API call
    def get_files language_id, limit, offset, project_id, search_string
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/files"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "language_id" => language_id,
        "project_id" => project_id,
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "limit" => limit,
        "offset" => offset,
        "search_string" => search_string,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Uploads a project file
    # @param [String] project_id Required parameter: Your project ID
    # @return void response from the API call
    def create_files project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/files"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Downloads a project's file
    # @param [String] file_id Required parameter: Your file ID
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] project_id Required parameter: Your project ID
    # @return mixed response from the API call
    def get_files file_id, language_id, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/files/{file_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_id" => file_id,
        "language_id" => language_id,
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a file's segments
    # @param [String] file_id Required parameter: Your file ID
    # @param [String] filter Required parameter: Your filter string
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] limit Required parameter: Your pagination limit
    # @param [String] offset Required parameter: Your pagination offset
    # @param [String] project_id Required parameter: Your project ID
    # @param [String] search_string Required parameter: Your search string
    # @return mixed response from the API call
    def get_segments file_id, filter, language_id, limit, offset, project_id, search_string
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/files/{file_id}/segments"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_id" => file_id,
        "language_id" => language_id,
        "project_id" => project_id,
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        "filter" => filter,
        "limit" => limit,
        "offset" => offset,
        "search_string" => search_string,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a segment
    # @param [String] file_id Required parameter: Your file ID
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] project_id Required parameter: Your project ID
    # @param [String] segment_id Required parameter: Your segment ID
    # @return mixed response from the API call
    def get_segments file_id, language_id, project_id, segment_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/files/{file_id}/segments/{segment_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_id" => file_id,
        "language_id" => language_id,
        "project_id" => project_id,
        "segment_id" => segment_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Updates a segment
    # @param [String] file_id Required parameter: Your file ID
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] project_id Required parameter: Your project ID
    # @param [String] segment_id Required parameter: Your segment ID
    # @return void response from the API call
    def update_segments file_id, language_id, project_id, segment_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/languages/{language_id}/files/{file_id}/segments/{segment_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_id" => file_id,
        "language_id" => language_id,
        "project_id" => project_id,
        "segment_id" => segment_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Adds segments to a file
    # @param [Project] body Required parameter: Project creation payload
    # @param [String] file_id Required parameter: Your file ID
    # @param [String] project_id Required parameter: Your project ID
    # @return void response from the API call
    def create_files body, file_id, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/files/{file_id}/segments"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_id" => file_id,
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Creates an empty file
    # @param [String] file_name Required parameter: Your file name
    # @param [String] project_id Required parameter: Your project ID
    # @return void response from the API call
    def create_files file_name, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/projects/{project_id}/files/{file_name}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "file_name" => file_name,
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets an organisation's translation memory
    # @return mixed response from the API call
    def get_tm
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Posts an organisation's translation memory
    # @return void response from the API call
    def create_tm
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/upload"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets a translation memory config
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return mixed response from the API call
    def get_tm tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/config"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Updates a translation memory config
    # @param [String] tm_id Required parameter: Your translation ID
    # @return void response from the API call
    def update_tm tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/config"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets a translation memory
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return mixed response from the API call
    def get_tm tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a translation memory's segments
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return mixed response from the API call
    def get_tm tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/segments"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Posts a translation memory's term
    # @return void response from the API call
    def create_tm
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/add_term"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets a translation memory's segment
    # @param [String] id Required parameter: Your segment ID
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return mixed response from the API call
    def get_tm id, tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/segments/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Updates a translation memory's segment
    # @param [String] id Required parameter: Your segment ID
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return void response from the API call
    def update_tm id, tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/segments/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Deletes a translation memory's segment
    # @param [String] id Required parameter: Your segment ID
    # @param [String] tm_id Required parameter: Your translation memory ID
    # @return void response from the API call
    def delete_tm id, tm_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/translation_memories/{tm_id}/segments/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "id" => id,
        "tm_id" => tm_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets organization's glossaries
    # @return mixed response from the API call
    def get_glossaries
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Posts an organization glossary
    # @return void response from the API call
    def create_glossaries
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/upload"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets a glossary's config
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @return mixed response from the API call
    def get_glossaries glossary_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/config"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Updates a glossary's config
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @return void response from the API call
    def update_glossaries glossary_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/config"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Downloads a glossary
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @return mixed response from the API call
    def get_glossaries glossary_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/download"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets a glossary
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @return mixed response from the API call
    def get_glossaries glossary_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets project glossaries
    # @param [String] language_id Required parameter: Your language ID
    # @param [String] project_id Required parameter: Your project ID
    # @return mixed response from the API call
    def get_glossaries language_id, project_id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/project/{project_id}/languages/{language_id}/glossaries/terms"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "language_id" => language_id,
        "project_id" => project_id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Posts glossary term
    # @return void response from the API call
    def create_glossaries
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/add_term"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets glossary term
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @param [String] id Required parameter: Your glossary term ID
    # @return mixed response from the API call
    def get_glossaries glossary_id, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/terms/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Updates glossary term
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @param [String] id Required parameter: Your glossary term ID
    # @return void response from the API call
    def update_glossaries glossary_id, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/terms/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Deletes glossary term
    # @param [String] glossary_id Required parameter: Your glossary ID
    # @param [String] id Required parameter: Your glossary term ID
    # @return void response from the API call
    def delete_glossaries glossary_id, id
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/glossaries/{glossary_id}/terms/{id}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "glossary_id" => glossary_id,
        "id" => id,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end
    end

    # Gets languages
    # @return mixed response from the API call
    def get_languages
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/languages"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets countries
    # @return mixed response from the API call
    def get_languages
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/countries"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Gets regex templates
    # @return mixed response from the API call
    def get_regextemplates
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/api/regextemplates"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "Qordoba 2.0",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => @basic_auth_user_name, :password => @basic_auth_password }

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end