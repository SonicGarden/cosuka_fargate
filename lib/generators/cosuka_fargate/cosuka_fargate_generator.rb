class CosukaFargateGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  desc 'For fargate setting files'

  def set_app_name
    # Note: RDS の postgresql では db 名にハイフンが入力できないため
    @app_name = name.underscore
  end

  def fargate_settings
    template 'Procfile'
    template 'buildspec.yml'
    template 'config/database.yml.docker'
    #template 'config/backup.rb'
    #template 'config/schedule.rb'
  end
end
