# frozen_string_literal: true

class MiddlewareGenerator < Rails::Generators::NamedBase
  # source_root File.expand_path('templates', __dir__)
  def create_middleware
    class_name = "#{file_name.classify}Middleware"
    create_file "app/middleware/#{file_name}_middleware.rb", <<~CONTENT
      class #{class_name}
        def initialize app
          @app = app
        end

        def call env
          @status, @headers, @response = @app.call(env)



          [@status, @headers, @response]
        end
      end
    CONTENT
    insert_into_file 'config/environments/development.rb', "\tconfig.middleware.use #{class_name}", after: "Rails.application.configure do\n"
  end
end
