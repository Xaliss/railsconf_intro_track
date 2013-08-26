    if success = enreg.create(  enreg.trip_id,
                  enreg.service_id,
                    enreg.route_id,
                      enreg.trip_headsign, 
                      enreg.direction_id,
                      enreg.shape_id )
    enddef consulte_page(page,contenu)
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


  <%= link_to "Redirecte moi",  trios_index_path, data: {confirm: 'Hatta Boy !!'}%>"


        ll <<  enreg.trip_id 
        ll <<   enreg.service_id
        ll <<  enreg.route_id
        ll <<  enreg.trip_headsign
        ll <<   enreg.direction_id
        ll <<   enreg.shape_id 
        ll <<   compte



              ll=[] 
      enreg.id = compte 
      enreg.trip_id=rangee[0]
      enreg.service_id=rangee[1]
      enreg.route_id=rangee[2]
      enreg.trip_headsign=rangee[3] 
      enreg.direction_id=rangee[4]
      enreg.shape_id=rangee[5]


      #-------------------------------------------------------
# Va lire une flatFile en csv contenant la liste des 
# parcours actives du reseau

def self.parcoursCsv(fichier)

  puts "oooooooooooooooooooooooooooooooooooooooo"
    radical=fichier.split('.') 
    radical=radical[0][0..-2].capitalize 
    if success = Stop.delete_all then puts "Table videe ! Chargement commence" end
  puts "----------------------------------------"

  asset_f1 = "app/assets/alim/#{fichier}"
  puts asset_f1
      ll = []
      
      compte = 0
      @retourCsv=CSV.parse(File.read(asset_f1),:headers => true)
      @retourCsv.each  do |rangee|
        parcours = find_by_id(rangee["id"]) || new
        parcours.attributes = rangee.to_hash.slice(*accessible_attributes)
        parcours.save!  
        compte +=1
        @chargement=compte
        @compte = compte
        puts   compte
   
   end
      
     @li = ll

     
  puts  "Base de donnees chargee avec succes. #{@compte} enregistrements"
end

#-------------------------------------------------------