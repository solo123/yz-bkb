class DemoController < ApplicationController
	respond_to :html, :xml 
	def details
		if params[:p]
			if params[:p] == 'simplebooktype'
				render 'book_list_brief.xml.erb'
			else
				render 'book_list.xml.erb'
			end
		elsif params[:bookid]
			render 'book_detail.xml.erb'
		end
	end
	def sync
		render 'sync.xml.erb'
	end
end