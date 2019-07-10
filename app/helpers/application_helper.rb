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

  def email_stars(email)
    @domain = email.split("@")[1]
    @alias = email.split("@")[0]
    @name = @domain.split(".")[0]
    @dotcom = @domain.split(".")[1]
    # @mask = @name.tap { |p| p[1...@name.length-2] = "***"}
    # @alias + "@" + @mask + "." + @dotcom

    if email.length > 15
      @alias + "@" + @name[0...3] + "**" + "." + @dotcom
    else
      @alias + "@" + @name + "." + @dotcom
    end
  end

  def is_active_count?(jobs)
    active_jobs = []
    jobs.each do |f|
      if f.status == true
        active_jobs << f
      end
    end
    active_jobs
  end

  def job_status?(job)
    if job.status?
      "<span class='label label-success'>active</span>".html_safe
    else
      "<span class='label label-default'>inactive</span>".html_safe
    end
  end

  def salary_space(salary)
    number_to_currency(salary, delimiter: " ", precision: 0, unit: "")
  end
	
end
