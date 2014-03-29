module ApplicationHelper
	def footer_menu
	  menu_items = Refinery::Menu.new(Refinery::Page.footer_menu_pages)

	  presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
	  presenter.dom_id = "footer_menu"
	  presenter.css = "footer_menu"
	  presenter.menu_tag = :div
	  presenter
	end
end
