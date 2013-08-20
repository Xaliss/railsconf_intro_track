class HorairesController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'open-uri'
  require 'csv'
  require 'xmlsimple' 
   
  
# -----------------------------------------------------------
#
# Connecteur: Parse une adresse produit une URI formattée
# et appelle le serveur avec la chaine de commande
# -----------------------------------------------------------
def connecte(req)
    uri = URI.parse(req)
    Net::HTTP.get(uri) #{ |http| http.request_head(uri.path)}
end
#------------------------------------------------------------
# Recoit au minimum, les trois premiers caractères d'un mot
# et fournit une liste de toute les stations qui 
# commencent par ces trois lettres ou plus.
# Retourne un tableau ordonnees

def recherche_de_nom(cas='nou',xml_voulue='trio.xml')
asset1 = "app/assets/xml/trio.xml"
req = "http://pt.data.tisseo.fr/placesList?term=#{cas}"
selecteur = "place"
  retourTrio = connecte(req)
  @retour = retourTrio # debug 
  xmlcompose  = compose(asset1,retourTrio)
  ll = liste_finale(xmlcompose,selecteur)
  @li = ll
end
#----------------------------------------------------------
# http://pt.data.tisseo.fr/messagesList?key=a11d95b1a1e8ff54095e3d368bc6bc6ba&stopPointId=3377699720883894
#Compose un hash decoupant la xml recue du serveur
def compose(nomDeXml,dataLue)
    file = File.new(nomDeXml,'w:ASCII-8BIT')
    file.print(dataLue)
    file.close
    @file = file
    
   
end

# -----------------------------------------------------------
# "xml_serve" est un fichier xml qui sera redecouppe par xml_simple en ash exploitable
# "selecteur" est le nom des nodes a explorer 
# Exemple de xml serve: 'C:/wamp/www/buseon/app/assets/xml/trio.xml'
# Exemple de selecteur: 'departure'

 def liste_finale(xml_serve,selecteur)
      xml = File.read(xml_serve)
      donnees = XmlSimple.xml_in(xml)
      toundra = []
      if donnees[selecteur] == nil
            @xmlret = "Pas de departs programmes"
            return nil
      end      
        donnees[selecteur].each do |maliste|
        toundra << maliste
      end
      return toundra
 end

#----------------------------------------------------------------
# Recoit un appel de la page show avec comme argument le code de la station de depart et renvoie une liste d"horaires 
# avec une periode de validite Il compose une xml puis la filtre en hash pour en extraire les donnees.
def tonnerre 
   
  @rr =params['id']
  @arret = params['sobriquet']
  ll = []
  if @rr 
      repu = "http://pt.data.tisseo.fr/departureBoard?stopPointId="+@rr+"&key=a11d95b1a1e8ff54095e3d368bc6bc6ba"
      asset1 = "app/assets/xml/departs.xml"
      selecteur   = "departure"
      retourTrio  = connecte(repu)
      xmlcompose  = compose(asset1,retourTrio)
      ll = liste_finale(asset1,selecteur)
      @li = ll
      @xmlret = retard("00:40:12","01:39:20")
  else @xmlret = "Station non desservie"
    
  end      
end  
#-------------------------------------------------------

# "xml_serve" est un fichier xml qui sera redecouppe par xml_simple en ash exploitable
# "selecteur" est le nom des nodes a explorer 
# Exemple de xml serve: 'C:/wamp/www/buseon/app/assets/xml/trio.xml'
# Exemple de selecteur: 'departure'

 def liste_finale(xml_serve,selecteur)
      xml = File.read(xml_serve)
      donnees = XmlSimple.xml_in(xml)
      toundra = []
      if donnees[selecteur] == nil
            @xmlret = "Pas de departs programmes"
            return nil
      end      
        donnees[selecteur].each do |maliste|
        toundra << maliste
      end
      return toundra
 end

#-------------------------------------------------------

#-------------------------------------------------------

 def index
     @trio  
end

def trio
  @trio = params[:Zom] 
  recherche_de_nom(@trio)
   
end

def retard
  @retard = params[:Zom] 
   
   
end

def retard (a,b)

  prem = a.split(':')
  deuce = b.split(':')

  prem[0]=prem[0].to_i
  prem[1]=prem[1].to_i
  prem[2]=prem[2].to_i
  deuce[0]=deuce[0].to_i
  deuce[1]=deuce[1].to_i
  deuce[2]=deuce[2].to_i

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

    res[0] = res[0].to_s
    res[1] = res[1].to_s
    res[2] = res[2].to_s 

   tenere << res[0]+':'+res[1]+':'+res[2]
    


end





end
