# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://remojobs.com"

SitemapGenerator::Sitemap.namer = SitemapGenerator::SimpleNamer.new(:sitemap, :extension => '.xml')

SitemapGenerator::Sitemap.public_path = 'tmp/'
# inform the map cross-linking where to find the other maps
SitemapGenerator::Sitemap.sitemaps_host = "https://#{ENV['S3_HOST_NAME']}/#{ENV['S3_BUCKET_NAME']}/"
# pick a namespace within your bucket to organize your maps
# SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(fog_provider: 'AWS',
                                     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                                     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
                                     fog_directory: ENV['S3_BUCKET_NAME'],
                                     fog_region: ENV['S3_REGION']
)

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  Category.find_each do |cat|
    add category_path(cat), priority: 0.8, changefreq: 'daily', lastmod: cat.updated_at
  end

  Job.where(status: true).find_each do |job|
    add job_path(job), priority: 0.6, lastmod: job.updated_at
  end

  ActsAsTaggableOn::Tag.find_each do |tag|
    add tag_path(tag), priority: 0.6, lastmod: tag.updated_at
  end

  add '/about', priority: 0.5
  add '/terms', priority: 0.5
  add '/privacy', priority: 0.5
  add '/contact', priority: 0.5
  add new_job_path, priority: 0.5
  add new_user_session_path, priority: 0.5
  add new_user_registration_path, priority: 0.5

end
