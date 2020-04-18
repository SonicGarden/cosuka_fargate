require "cosuka_fargate/version"

if defined?(::Rails::Railtie)
  require "cosuka_opsworks/railtie"
else
  puts "Please CosukaOpsworks setup by manual."
end

module CosukaFargate
  class Error < StandardError; end
  # Your code goes here...
end
