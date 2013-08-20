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
def stubk
stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").\
with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,\
	identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).\
to_return(:status => 200, \
	:body =>'

<?xml version="1.0" encoding="UTF-8"?>	
<placesList expirationDate="2013-08-21 3:45" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://pt.data.tisseo.fr/xsd/PlacesList.xsd">

<place label="Jean Moulin (SAINT-JEAN)" category="Stops" key="Jean Moulin SAINT-JEAN" className="stop" x="1.498183" y="43.666785" id="1970324837190562" rank="1"  network="Tisséo">
</place><place label="Jean Moulin (CASTANET-TOLOSAN)" category="Stops" key="Jean Moulin CASTANET-TOLOSAN" className="stop" x="1.510717" y="43.520898" id="1970324837189431" rank="2"  network="Tisséo">
</place><place label="Avenue Jean Moulin (TOULOUSE)" category="Roads" key="Avenue Jean Moulin TOULOUSE" className="road" x="1.442635" y="43.583935"  rank="3"  >
</place><place label="Rue Jean Moulin (SAINT-JEAN)" category="Roads" key="Rue Jean Moulin SAINT-JEAN" className="road" x="1.498992" y="43.665521"  rank="4"  >
</place><place label="Rue Jean Moulin (REVEL)" category="Roads" key="Rue Jean Moulin REVEL" className="road" x="2.007006" y="43.458127"  rank="5"  >
</place><place label="Rue Jean Moulin (LOMBEZ)" category="Roads" key="Rue Jean Moulin LOMBEZ" className="road" x="0.909914" y="43.475288"  rank="6"  >
</place><place label="Rue Jean Moulin (SAMATAN)" category="Roads" key="Rue Jean Moulin SAMATAN" className="road" x="0.930333" y="43.493810"  rank="7"  >
</place>
</placesList> ',  :headers => {})
end