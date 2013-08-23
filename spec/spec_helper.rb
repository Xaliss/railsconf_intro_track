ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'webmock/rspec'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

WebMock.disable_net_connect!(:allow_localhost => true)

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.use_transactional_fixtures = true
  config.order = 'random'
end
 
 def stubz
stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").with(:headers => \
	{'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', \
	 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).to_return(:status => 200, \
	 :body => "app/assets/xml/stubTrio.xml" , :headers => {})
 
  end

  def stubx
 stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=nou").\
     with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,\
     	deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr',\
     	 'User-Agent'=>'Ruby'})


  end
def stubH
       stub_request(:get, "http://pt.data.tisseo.fr/departureBoard?key=a11d95b1a1e8ff54095e3d368bc6bc6ba&stopPointId=1970324837189431").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "app/assets/xml/stubH.xml", :headers => {})
end


def stub_perturbs

       stub_request(:get, "http://pt.data.tisseo.fr/messagesList?key=a11d95b1a1e8ff54095e3d368bc6bc6ba&stopPointId=3377699720883894").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "app/assets/xml/stubPerturbs.xml", :headers => {})
end