require 'omniauth'

module OmniAuth
  module Strategies
    class Environment
      include OmniAuth::Strategy

      args [ :env_keys ]
      option :env_keys, %w(REMOTE_USER)

      def authenticated_uid
        @uid ||= request.env[options[:env_keys].detect {|k| request.env[k] }]
      end

      uid { authenticated_uid }

      def request_phase
        return fail!(:no_authenticated_uid) unless authenticated_uid
        [ 302,
          {
            'Location' => script_name + callback_path + query_string,
            'Content-Type' => 'text/plain'
          }
        ]
      end
    end
  end
end
