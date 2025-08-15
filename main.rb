require 'date'

def env_has_key(key)
  value = ENV[key]
  value.nil? || value.strip.empty? ? abort_with_message("Missing #{key}") : value
end

test_env = env_has_key("AC_TEST_ENV")
value = Date.today.to_s

File.open(env_has_key("AC_ENV_FILE_PATH"), 'a') do |f|
  f.puts "AC_TEST_ENV=#{value}"
end
