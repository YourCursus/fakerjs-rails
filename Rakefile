require 'bundler/gem_tasks'
require 'fileutils'

desc 'Update the Faker.js Javascript file'
task :update do
  def download(version)
    base_url = 'https://raw.githubusercontent.com/Marak/faker.js'
    puts "Downlading Faker.js #{version} ..."
    `curl -o vendor/assets/javascripts/switchery.js \
      #{base_url}/v#{version}/build/build/faker.js`
  end

  FileUtils.mkdir_p('vendor/assets/javascripts')
  download(Fakerjs::Rails::VERSION)
  puts "\e[32mDone!\e[0m"
end
