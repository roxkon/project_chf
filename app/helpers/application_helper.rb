module ApplicationHelper
  
  def full_title(page_title = '')
    base_title = "Serwis Informacyjny Cannabis House sp. z o.o."
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end	

end
