Resque.redis = Redis.new(
  host:     ENV["REDIS_HOST"],
  port:     ENV["REDIS_PORT"],
  password: ENV["REDIS_PASSWORD"],
  ssl:      ENV["REDIS_SSL"] == "true",
  thread_safe: true
)

if ENV["RESQUE_NAMESPACE"].present?
  Resque.redis.namespace = ENV["RESQUE_NAMESPACE"].to_sym
end
