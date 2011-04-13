class DemoController < ApplicationController
	respond_to :html, :xml 
	def details
		render 'details.xml.erb'
	end
	def sync
		render 'sync.xml.erb'
	end
end