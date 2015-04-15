require 'rake'


SERVER_PATH='hehejo.de:/html/de.hehejo.blog/'

PUBLISH_DIR='_site'

desc 'publish website'
task :deploy => [:create] do 
	sh "rsync -avz -e ssh --delete  #{PUBLISH_DIR}/ #{SERVER_PATH}"
end

desc "create and copy to #{PUBLISH_DIR}"
task :create do 
	sh "jekyll build --quiet"
end
