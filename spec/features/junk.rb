def consulte_page(page,contenu)
 visit horaires_index_path
 expect(page).to have_content('#{contenu}')
 
end


    visit horaires_index_path
    expect(page).to have_content('Nouvelle Page')
    click_link "Liste des arrets en activite"

    expect(page).to have_content('arrets en activite')
    click_link "Retour"

<strong>Recherche</strong>

fill_in "trio", with: "nou"

  <% if :Horaire.errors.any? %>
    <div id='error_explanation'>
      <h2><%= pluralize(:Horaire.errors.count, 'error') %>
        empechent ces donnees d'etre enregistrees:</h2>

      <ul>
        <% @task.errors.full_messages.each do |msg| %>
          <li><%= msg %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  
expect(page).to_have content 'Horaire[nom]'
  
 Keke = {"utf8"=>"✓", "authenticity_token"=>"5qzCMzQV2FbS4HMZLdDYkzaLS4z61X5yCpss6QTc7Xo=", "Horaire"=>{"nom"=>""}, "commit"=>"Recherche", "controller"=>"horaires", "action"=>"trio"} 


    @retour =params.require(:Horaire).permit(:nom)


    


flash.notice = Minimum trois caracteres SVP"

    cle = "a11d95b1a1e8ff54095e3d368bc6bc6ba"
    # lignes perturbées
    kk = "http://pt.data.tisseo.fr/linesDisrupted?key=a11d95b1a1e8ff54095e3d368bc6bc6ba"
    # Messages postes
    zz ="http://pt.data.tisseo.fr/messagesList?key=a11d95b1a1e8ff54095e3d368bc6bc6ba&stopPointId=3377699720883894"
    # Tous les points d'arrets
    pa = "http://pt.data.tisseo.fr/stopPointsList?key=a11d95b1a1e8ff54095e3d368bc6bc6ba"


 stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "", :headers => {})

 stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => "Hallo Africa ", :headers => {})


        <td><%=link_to(station['label'].force_encoding('UTF-8'), :action => 'tonnerre', :id => @rr,:sobriquet => @stop  )%></td>


        railsconf_intro_track





        stub_request(:get, "http://pt.data.tisseo.fr/placesList?term=").
        with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'pt.data.tisseo.fr', 'User-Agent'=>'Ruby'}).
        to_return(:status => 200, :body => "", :headers => {})


    retard("12:56:43","07:32:57")
    should == "05:23:46"

    retard("00:47:12" , "01:49:15") 
    should == "22:57:57"


      click_button 'Recherche'
  expect(page).to have_content "Moulin"

  
