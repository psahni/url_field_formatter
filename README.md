#### Url Field  Formatter

You have model, you have a field say website that saves url, you want to prepend 'http://' everytime, if the user 

has not entered full url, instead he just entered for ex: 'something.com'.

Now, you don't want to push user to enter full url.

In that case this gem can be helpful. It just prepends 'http://' to the url, if the url does not starts with http or https.


#### How To Use

```ruby
class Business < ActiveRecord::Base
  format_url_field :website  
end


business = Business.new
business.website = 'mybusiness.com'
business.save
puts business.website

 # http://mybusiness.com

```

```
This gems add a before_save callback, which does the required job.
```

#### Additional Info

Clone it, run it, modify it, do whatever you want to do. If, you face any issue or want to upgrade it,
send me pull request or mail me at prashantsahni5@gmail.com

