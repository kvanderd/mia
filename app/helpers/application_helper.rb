#available in all views

module ApplicationHelper

	def title(page_title)
		content_for(:title) { page_title }
	end


end
