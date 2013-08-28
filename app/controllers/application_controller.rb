class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html
helper_method :retard

#//////////////////////////////////////////////////////


def retard (a,b)
  
  	prem = a.split(':')
  	deuce = b.split(':')
   
if !(prem && deuce) 
	return "rien" 
	 else    
		   prem[0] =  prem[0].to_i
		   prem[1] =  prem[1].to_i
		   prem[2] =  prem[2].to_i
		  deuce[0] = deuce[0].to_i
		  deuce[1] = deuce[1].to_i
		  deuce[2] = deuce[2].to_i

		  h_retenue = 0
		  m_retenue = 0
		  j_retenue = 0
		  res = [0,0,0]

		  if deuce[2].to_i > prem[2].to_i
		       res[2] = (prem[2].to_i+60) - deuce[2].to_i
		      m_retenue = -1
		    else 
		      res[2] = prem[2]  - deuce[2]
		    end

		# Enleve la retenue des minutes

		    prem[1]  = prem[1].to_i + m_retenue

		    if prem[1] < 0 then 
		      prem[1]=59 
		      h_retenue = -1 
		    end
		          

		     
		        
		  if deuce[1] > prem[1]

		      res[1] = (prem[1]+60)- deuce[1]
		      h_retenue = -1
		    else 
		      res[1] =prem[1]  - deuce[1]    
		    end
		# Enleve la retenue des heures

		    prem[0] = prem[0] + h_retenue

		    if prem[0] < 0 then 
		      prem[0]=23
		      j_retenue = -1
		     end     


		  if deuce[0] > prem[0] 

		      res[0] = (prem[0]+24)- deuce[0]
		      h_retenue = -0
		    else 
		      res[0] =prem[0] - deuce[0]    
		    end


		    tenere =[]

		#Arrange la presence to zero devant quand le chiffre est < 10

		    res[0] = res[0].to_s
		    if res[0].to_i < 10 then res[0] = "0"+res[0] end
		    res[1] = res[1].to_s
		    if res[1].to_i < 10 then res[1] = "0"+res[1] end
		    res[2] = res[2].to_s 
		    if res[2].to_i < 10 then res[2] = "0"+res[2] end

		   tenere << res[0]+':'+res[1]+':'+res[2]
  end
  


end

#//////////////////////////////////////////////////////

#-------------------------------------------------------
# Va lire une flatFile en csv contenant la liste des 
# parcours actives du reseau

def parcoursCsv(fichier,kklass)
klass = Object.const_get kklass
	puts "oooooooooooooooooooooooooooooooooooooooo"
		
		if success = klass.delete_all then puts "Table videe ! Chargement commence" end

	puts "----------------------------------------"

  asset_f1 = "app/assets/alim/#{fichier}"
  puts asset_f1
       
      
      compte = 0
      @retourCsv=CSV.parse(File.read(asset_f1),:headers => true)
      @retourCsv.each  do |rangee|
      	parcours = klass.find_by_id(rangee["id"]) || klass.new
      	parcours.attributes = rangee.to_hash.slice(*klass.accessible_attributes)
      	 
      	puts parcours.attributes
        parcours.save!  
 		    compte +=1
		    @chargement=compte
		    @compte = compte
		    puts   compte
	 
	 end
      
      

     
 	puts  "Base de donnees chargee avec succes. #{@compte} enregistrements"
end


#-------------------------------------------------------

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
end
