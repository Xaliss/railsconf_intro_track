 
require 'webmock/cucumber'
require 'webmock/rspec'


def stubc
     stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").
        with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
        to_return(:status => 200, :body => "app/assets/xml/stubTrio.xml", :headers => {})


end
 


 