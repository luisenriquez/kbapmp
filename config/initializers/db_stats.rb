#save stats database settings in global var
DB_STATS = YAML::load(ERB.new(File.read(Rails.root.join("config","database_stats.yml"))).result)[Rails.env]
