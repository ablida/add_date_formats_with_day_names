Redmine::Plugin.register :add_date_formats_with_week_days do
  name 'Add Date Formats With Week Days plugin'
  author 'ablida'
  description 'Adds selectable date formats with week days to settings'
  version '0.1.0'
  url 'https://github.com/ablida/add_date_formats_with_week_days'
  author_url 'https://github.com/ablida'

  RedmineApp::Application.config.after_initialize do
    SettingsHelper.send(:include, AddDateFormatsWithWeekDays)
  end
end
