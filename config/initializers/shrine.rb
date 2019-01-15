require "shrine"
if Rails.env.development?
  require "shrine/storage/file_system"
  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),       # permanent
  }
elsif Rails.env.test?
  require 'shrine/storage/memory'
  Shrine.storages = {
    cache: Shrine::Storage::Memory.new,
    store: Shrine::Storage::Memory.new
  }
else
  require "shrine/storage/s3"
  s3_options = {
    access_key_id:     Rails.application.secrets.s3_access_key_id,
    secret_access_key: Rails.application.secrets.s3_secret_access_key,
    region:            ENV['AWS_REGION'],
    bucket:            Rails.application.secrets.s3_bucket
  }
  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: "cache", upload_options: { acl: "public-read" }, **s3_options),
    store: Shrine::Storage::S3.new(prefix: "store", upload_options: { acl: "public-read" }, **s3_options)
  }
end

Shrine.plugin :activerecord # or :sequel 
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplays
Shrine.plugin :default_url_options, cache: { public: true }, store: { public: true } # public urls so pictures url are not cached
