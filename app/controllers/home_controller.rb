class HomeController < ApplicationController
	def index
		@head = '<table border="1">'
		for header in request.env.select {|k,v| k.match("^HTTP.*")}
			@head += '<tr><td>' + header[0].split('_',2)[1] + '</td>' +
				'<td>' + header[1] + '</td></tr>'
		end
		@head += '</table>'  
		hd = VisitHistory.new
		hd.url = request.url
		hd.head = @head
		hd.save!  
	end
	def list
		@his = VisitHistory.all.order('created_at desc')
	end
end