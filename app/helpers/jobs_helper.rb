module JobsHelper

  def new_offer?(offer)
    if offer.created_at >= 7.day.ago
      image_tag("new_icon.png", alt: "new job offer")
    end
  end

end
