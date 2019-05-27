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

  # for "active" class in menu
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def instead_of_logo(title)
    output = ""
    if title != nil
      @words = title.split(" ")
      @words.each do |f|
        output << f[0]
      end
    end
    output.upcase
  end
	
end
