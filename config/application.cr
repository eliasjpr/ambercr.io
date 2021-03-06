Amber::Server.instance.config do |app|
  # Server options
  app_path = __FILE__ # Do not change unless you understand what you are doing.
  app.name = "Ambercr.io web application."
  app.env = ENV.fetch("AMBER_ENV", "development").colorize(:green).to_s
  app.log = ::Logger.new(STDOUT)
  app.log.level = ::Logger::INFO
end
