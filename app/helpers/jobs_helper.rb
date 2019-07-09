module JobsHelper

  def new_offer?(offer)
    if offer.created_at >= 14.day.ago
      # image_tag("new_icon.png", alt: "new job offer")
      "<div class='new-offer'>new</div>".html_safe
    end
  end

end
