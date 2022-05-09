puts "🌱 Seeding spices..."

# Seed your database here
wstraw = Division.create(name: 'Women\'s Strawweight' , weight_limit: )
wbant = Division.create(name: 'Women\'s Banatamweight' , weight_limit: )
mwelter = Division.create(name: 'Men\'s Welterweight' , weight_limit: )
mlight = Division.create(name: 'Men\'s Lightweight' , weight_limit: )


brazil = Country.create(name: "Brazil" , continent: "South America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KLJLDjQnd1yR0oIn6yguj4lt71ndlg2aJA&usqp=CAU' )
usa = Country.create(name: "USA" , continent: "North America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFimZJnms01YmxD0eg6YIfLgGOzCLa_cHJAQ&usqp=CAU' )
jamaica = Country.create(name: "Jamaica" , continent: "North America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQreuPF0c0OPmwOaDR2voSMDfT8yVjHTEh-AenK4MC1L0crYELQ-T6jTUMNaGADKxLfeUg&usqp=CAU' )
czechia = Country.create(name: "Czechia" , continent: "Europe" , flag_img: 'https://www.flagsonline.it/uploads/2016-6-6/1200-0/czech.jpg' )
russia = Country.create(name: "Russia" , continent: "Asia" , flag_img: 'https://www.advantour.com/russia/images/symbolics/russia-flag.jpg' )
iran = Country.create(name: "Iran" , continent: "Asia" , flag_img: 'https://news.usni.org/wp-content/uploads/2016/08/iran-flag.jpg' )
ireland = Country.create(name: "Ireland" , continent: "Europe" , flag_img: 'https://myrealireland.com/wp-content/uploads/2018/05/irish-flag-origin.jpg' )
kazakhstan = Country.create(name: "Kazakhstan" , continent: "Asia" , flag_img: 'https://i0.wp.com/www.silkroadbriefing.com/news/wp-content/uploads/2019/11/Kazakhstan-flag.jpg?quality=90&strip=all&ssl=1' )
nigeria = Country.create(name: "Nigeria" , continent: "Asia" , flag_img: 'https://i0.wp.com/regtechafrica.com/wp-content/uploads/2021/09/nigerian-flag-1024x569-1.jpg' )
mexico = Country.create(name: "Mexico" , continent: "North America" , flag_img: 'https://theflager.com/wp-content/uploads/2020/06/istockphoto-931106312-170667a.jpg' )




puts "✅ Done seeding!"
