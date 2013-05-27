require File.join(File.dirname(__FILE__), "..", "lib", "url_field_formatter")
ActiveRecord::Base.send(:include, UrlFormatter)
