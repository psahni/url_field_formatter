module UrlFormatter

  extend ActiveSupport::Concern

  included do

    def self.url_field_formatter(field_name)
      class_eval do
        define_method "format_#{ field_name }" do
          field_value = send(field_name)
          return nil if field_value.blank?
          unless field_value.match(/^https?:\/\/.*$/)
           return send(:"#{ field_name }=", "http://" + field_value)
          end
        end
      end
      send(:before_save, "format_#{ field_name }")
    end

  end #EndDo
end



if Object.const_defined?("ActiveRecord")
  ActiveRecord::Base.send(:include, UrlFormatter)
end
