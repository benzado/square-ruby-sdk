require 'erb'
module Square
  # BaseApi.
  class BaseApi
    attr_accessor :config, :http_call_back

    def initialize(config, http_call_back: nil)
      @config = config
      @http_call_back = http_call_back

      @global_headers = {
        'user-agent' => get_user_agent,
        'Square-Version' => config.square_version
      }
    end

    def validate_parameters(args)
      args.each do |_name, value|
        raise ArgumentError, "Required parameter #{_name} cannot be nil." if value.nil?
      end
    end

    def execute_request(request, binary: false)
      @http_call_back&.on_before_request(request)

      APIHelper.clean_hash(request.headers)
      request.headers.merge!(@global_headers)
      request.headers.merge!(config.additional_headers) unless config.additional_headers.nil?

      response = if binary
                   config.http_client.execute_as_binary(request)
                 else
                   config.http_client.execute_as_string(request)
                 end
      @http_call_back&.on_after_response(response)

      response
    end

    def get_user_agent
      user_agent = 'Square-Ruby-SDK/20.1.0.20220616 ({api-version}) {engine}/{engine-version} ({os-info}) {detail}'
      user_agent['{engine}'] = RUBY_ENGINE
      user_agent['{engine-version}'] = RUBY_ENGINE_VERSION
      user_agent['{os-info}'] = RUBY_PLATFORM
      user_agent['{api-version}'] = config.square_version
      if config.user_agent_detail.nil? || config.user_agent_detail.empty?
        user_agent = user_agent.gsub('{detail}', '')
      else
        user_agent['{detail}'] = ERB::Util.url_encode(config.user_agent_detail.to_s)
      end
      user_agent
    end
  end
end
