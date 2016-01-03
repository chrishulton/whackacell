DatabaseCleaner.strategy = :truncation

Before do |scenario|
  DatabaseCleaner.clean
end
