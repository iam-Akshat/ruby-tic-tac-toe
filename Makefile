bin:main.rb
	cp main.rb ./bin/main.rb && sed -i '1i#!/usr/bin/env ruby' ./bin/main.rb && chmod 755 ./bin/main.rb