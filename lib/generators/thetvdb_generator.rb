class ThetvdbGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  def create_initializer_file
    #create_file "config/initializers/showsmapper.rb"
    copy_file "thetvdb.rb", "config/initializers/thetvdb.rb"
  end
end