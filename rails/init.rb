yaml = ERB.new(File.read(RAILS_ROOT + "/config/friendly.yml")).result
config = YAML.load(yaml)[RAILS_ENV]
Friendly.configure(config)
