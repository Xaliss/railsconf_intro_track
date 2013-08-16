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

  expect(page).to_have content 'Horaire[nom'

  
 Keke = {"utf8"=>"✓", "authenticity_token"=>"5qzCMzQV2FbS4HMZLdDYkzaLS4z61X5yCpss6QTc7Xo=", "Horaire"=>{"nom"=>""}, "commit"=>"Recherche", "controller"=>"horaires", "action"=>"trio"} 


    @retour =params.require(:Horaire).permit(:nom)
