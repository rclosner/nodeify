module Nodeify
  class Rails < Rails::Railtie
    initializer "nodeify.sprockets.environment" do |app|
      app.assets.unregister_processor 'application/javascript', Sprockets::DirectiveProcessor
      app.assets.register_engine '.js', Nodeify::JavaScript
    end
  end
end
