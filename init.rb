Redmine::Plugin.register :add_date_formats_with_day_names do
  name 'Add Date Formats With Day Names plugin'
  author 'ablida'
  description 'Adds selectable date formats with day names to settings'
  version '0.0.1'
  url 'https://github.com/ablida/add_date_formats_with_day_names'
  author_url 'https://github.com/ablida'

  RedmineApp::Application.config.after_initialize do
    SettingsHelper.send(:include, AddDateFormatsWithDayNames)
  end
end
