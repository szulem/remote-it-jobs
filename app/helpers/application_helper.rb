module ApplicationHelper

  def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
  end

  def big_first(word)
  	word.capitalize
  end

  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = "Remote IT jobs - Remojobs.com"
    end_title = "Remojobs.com"
    if page_title.empty?
      base_title
    else
      page_title + " | " + end_title
    end
  end
	
end
