module AddDateFormatsWithWeekDays
  def self.included(base)
    base.class_eval do
      def date_format_setting_options(locale)
        date_formats = ['%a., %d.%m.%Y', '%A, %d.%m.%Y']
        (Setting::DATE_FORMATS + date_formats).map do |f|
          today = ::I18n.l(User.current.today, :locale => locale, :format => f)
          format = f.delete('%').gsub(/[dmY]/) do
            {'d' => 'dd', 'm' => 'mm', 'Y' => 'yyyy'}[$&]
          end
          ["#{today} (#{format})", f]
        end
      end
    end
  end
end
