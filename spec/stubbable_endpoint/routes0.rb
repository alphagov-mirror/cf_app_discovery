module StubbableEndpoint
    module Routes0
    module_function

      def http_method
        :get
      end

      def url
        "https://api.example.com:80/v2/apps/app-2-guid/routes"
      end

      def request_headers
        {
          "Authorization" => "bearer dummy-oauth-token",
          "User-Agent" => "cf_app_discovery - GDS - RE",
        }
      end

      def request_body
        ""
      end

      def response_headers
        {}
      end

      def response_body
        {
            "resources": [
                {
                    "entity": {
                        "host": "test-2a",
                    }
                },
                {
                    "entity": {
                        "host": "test-2b",
                    }
                }
            ]
        }
      end
    end
  end
