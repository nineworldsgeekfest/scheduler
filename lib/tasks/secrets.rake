task :default => ["config/secrets.yml"]
task "spec:prepare" => ["config/secrets.yml"]
task "test:prepare" => ["config/secrets.yml"]

namespace :secrets do
    desc "Generate a new config/secrets.yml"
    task :generate => ["config/secrets.yml"]

    desc "Generate a new config/secrets.yml"
    file "config/secrets.yml" do
        fh = File.open("config/secrets.yml", "w")

        content = "# Be sure to restart your server when you modify this file.
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.
# Make sure the secrets in this file are kept private
# if you're sharing your code publicly.

development:
    secret_key_base: #{generateSecretString}
test:
    secret_key_base: #{generateSecretString}

# Do not keep production secrets in the repository,
# instead read values from the environment.

production:
    secret_key_base: <%= ENV[\"SECRET_KEY_BASE\"] %>"
        fh.puts content 
        fh.close
        puts "generated a new config/secrets.yml"
    end

    def generateSecretString()
        keylength = 128
        return rand(36**keylength).to_s(36)
    end
end
