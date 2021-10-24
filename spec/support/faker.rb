if defined?(Faker)
  I18n.enforce_available_locales = false
  Faker::Config.locale = :en
end