puts "🌱 Seeding spices..."

# Seed your database here
puts 'seeding divisions'
Division.create(id: 0, name: 'Women\'s Strawweight' , weight_limit: )
Division.create(id: 1, name: 'Women\'s Banatamweight' , weight_limit: )
Division.create(id: 2, name: 'Men\'s Welterweight' , weight_limit: )
Division.create(id: 3, name: 'Men\'s Lightweight' , weight_limit: )

puts 'seeding countries'
Country.create(id: 0, name: "Brazil" , continent: "South America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3KLJLDjQnd1yR0oIn6yguj4lt71ndlg2aJA&usqp=CAU' )
Country.create(id: 1, name: "USA" , continent: "North America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFimZJnms01YmxD0eg6YIfLgGOzCLa_cHJAQ&usqp=CAU' )
Country.create(id: 2, name: "Nigeria" , continent: "Asia" , flag_img: 'https://i0.wp.com/regtechafrica.com/wp-content/uploads/2021/09/nigerian-flag-1024x569-1.jpg' )
Country.create(id: 3, name: "Jamaica" , continent: "North America" , flag_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQreuPF0c0OPmwOaDR2voSMDfT8yVjHTEh-AenK4MC1L0crYELQ-T6jTUMNaGADKxLfeUg&usqp=CAU' )
Country.create(id: 4, name: "Czechia" , continent: "Europe" , flag_img: 'https://www.flagsonline.it/uploads/2016-6-6/1200-0/czech.jpg' )
Country.create(id: 5, name: "Russia" , continent: "Asia" , flag_img: 'https://www.advantour.com/russia/images/symbolics/russia-flag.jpg' )
Country.create(id: 6, name: "Mexico" , continent: "North America" , flag_img: 'https://theflager.com/wp-content/uploads/2020/06/istockphoto-931106312-170667a.jpg')
Country.create(id: 7, name: "Ireland" , continent: "Europe" , flag_img: 'https://myrealireland.com/wp-content/uploads/2018/05/irish-flag-origin.jpg' )
Country.create(id: 8, name: "Kazakhstan" , continent: "Asia" , flag_img: 'https://i0.wp.com/www.silkroadbriefing.com/news/wp-content/uploads/2019/11/Kazakhstan-flag.jpg?quality=90&strip=all&ssl=1' )
Country.create(id: 9, name: "Iran" , continent: "Asia" , flag_img: 'https://news.usni.org/wp-content/uploads/2016/08/iran-flag.jpg' )
Country.create(id: 10, name: "China" , continent: "Asia" , flag_img: 'https://ak.picdn.net/shutterstock/videos/1024128509/thumb/1.jpg' )

puts "seeding Womens Bantamweight"
Fighter.create(full_name: "Juianna Pena", country_id: 1, height: 66, reach: 69, record: "12-4-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2022-03/4a05c12f-1efb-4115-82b6-57e6533181a3%252FPENA_JULIANNA_BELT-NEW.png?itok=_6Mgwunm", division_id: 1)
Fighter.create(full_name: "Amanda Nunes", country_id: 0, height: 68, reach: 69, record: "21-5-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-12/NUNES_AMANDA_BELT.png?itok=Xb7MJz9V", division_id: 1)
Fighter.create(full_name: "Holly Holm", country_id: 1, height: 68, reach: 69, record: "14-5-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2020-10/68095%252Fprofile-galery%252Fprofile-picture%252FHOLM_HOLLY_10-03.png?VersionId=vq.83C2mkbZkhnqGr_JBj2WshVQg31p_&itok=3TmLBO45", division_id: 1)
Fighter.create(full_name: "Irene Aldana", country_id: 6, height: 69, reach: 68.5, record: "13-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/68120%252Fprofile-galery%252Fprofile-picture%252FALDANA_IRENE_07-10.png?itok=x2VrmtMf", division_id: 1)
Fighter.create(full_name: "Raquel Pennington", country_id: 1, height: 67, reach: 67.5, record: "14-9-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-09/69051%252Fprofile-galery%252Fprofile-picture%252FPENNINGTON_RAQUEL_09-18.png?itok=l7DTGz9b", division_id: 1)
Fighter.create(full_name: "Ketlen Vieira", country_id: 0, height: 68, reach: 68, record: "12-2-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-11/68489%252Fprofile-galery%252Fprofile-picture%252FVIEIRA_KETLEN_11-20.png?itok=TyRgAecB", division_id: 1)
Fighter.create(full_name: "Yana Kunitskaya", country_id: 5, height: 66, reach: 68.5, record: "14-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/69523%252Fprofile-galery%252Fprofile-picture%252FKUNITSKAYA_YANA_07-10.png?itok=t6m3MS_k", division_id: 1)
Fighter.create(full_name: "Aspen Ladd", country_id: 1, height: 66, reach: 66, record: "9-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/67418%252Fprofile-galery%252Fprofile-picture%252FLADD_ASPEN_07-24.png?itok=5-zVdH-E", division_id: 1)
Fighter.create(full_name: "Sara McMann", country_id: 1, height: 66, reach: 66, record: "13-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2022-03/6611ab1c-c758-4a2b-b491-74fac8074f98%252FMCMANN_SARA_01-25.png?itok=3O6XH1AR", division_id: 1)
Fighter.create(full_name: "Miesha Tate", country_id: 1, height: 66, reach: 65, record: "19-8-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/68822%252Fprofile-galery%252Fprofile-picture%252FTATE_MIESHA_07-17.png?itok=RTbpLZ0c", division_id: 1)
Fighter.create(full_name: "Pannie Kianzad", country_id: 9, height: 67, reach: 68, record: "17-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-06/68970%252Fprofile-galery%252Fprofile-picture%252FKIANZAD_PANNIE_06-12.png?VersionId=null&itok=InW9_7-8", division_id: 1)

puts "seeding Men's Welterweight"
Fighter.create(full_name: "Kamaru Usman", country_id: 2, height: 72, reach: 76, record: "20-1-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-04/68441%252Fprofile-galery%252Fprofile-picture%252FUSMAN_KAMARU_BELT_04-24.png?VersionId=null&itok=Fm51Dbcc", division_id: 2)
Fighter.create(full_name: "Colby Covington", country_id: 1, height: 71, reach: 72, record: "17-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-11/67658%252Fprofile-galery%252Fprofile-picture%252FCOVINGTON_COLBY_11-06.png?itok=UOvmcbMl", division_id: 2)
Fighter.create(full_name: "Leon Edwards", country_id: 3, height: 72, reach: 74, record: "19-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-06/68564%252Fprofile-galery%252Fprofile-picture%252FEDWARDS_LEON_06-12.png?VersionId=null&itok=WSl5sqHn", division_id: 2)
Fighter.create(full_name: "Khamzat Chimaev", country_id: 4, height: 74, reach: 75, record: "11-0-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-10/71660%252Fprofile-galery%252Fprofile-picture%252FCHIMAEV_KHAMZAT_10-30.png?itok=bsSC8A2h", division_id: 2)
Fighter.create(full_name: "Gilbert Burns", country_id: 0, height: 70, reach: 71, record: "20-5-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/68020%252Fprofile-galery%252Fprofile-picture%252FBURNS_GILBERT_07-10.png?itok=WSCewnzx", division_id: 2)
Fighter.create(full_name: "Belal Muhammad", country_id: 1, height: 71, reach: 72, record: "21-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2022-04/05add092-bc54-41ce-ad46-94f37fb840d6%252FMUHAMMAD_BELAL_04-16.png?itok=Ga6Rbo3G", division_id: 2)
Fighter.create(full_name: "Vicente Luque", country_id: 1, height: 71, reach: 75.5, record: "21-8-1", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2022-04/a48c00a3-4e62-427d-9608-57656a706916%252FLUQUE_VICENTE_04-16.png?itok=bORT_Y7V", division_id: 2)
Fighter.create(full_name: "Stephen Thompson", country_id: 1, height: 72, reach: 75, record: "16-6-1", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-07/69286%252Fprofile-galery%252Fprofile-picture%252FTHOMPSON_STEPHEN_07-10.png?itok=3vySdjo5", division_id: 2)
Fighter.create(full_name: "Jorge Masvidal", country_id: 1, height: 71, reach: 74, record: "35-16-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-04/68347%252Fprofile-galery%252Fprofile-picture%252FMASVIDAL_JORGE_04-24.png?VersionId=null&itok=6kWwV5z_", division_id: 2)
Fighter.create(full_name: "Sean Brady", country_id: 1, height: 70, reach: 72, record: "15-0-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-11/69577%252Fprofile-galery%252Fprofile-picture%252FBRADY_SEAN_11-20.png?itok=Yc9JMnwH", division_id: 2)
Fighter.create(full_name: "Neil Magny", country_id: 1, height: 75, reach: 80, record: "26-9-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-05/68901%252Fprofile-galery%252Fprofile-picture%252FMAGNY_NEIL_05-08.png?VersionId=null&itok=IS6fEDyt", division_id: 2)

puts "🌱 Seeding Men's Lightweight"
Fighter.create(full_name: "Charles Oliveira", country_id: 0, height: 70, reach: 74, record: "33-8-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-05/051721-hero__1.jpg?VersionId=null&h=d1cb525d&itok=Wd0RKiqZ", division_id: 3)
Fighter.create(full_name: "Dustin Poirer", country_id: 1, height: 69, reach: 72, record: "28-7-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-01/Porier-Dustin_HERO_Updated-012621.png?VersionId=null&h=d1cb525d&itok=XKmppk50", division_id: 3)
Fighter.create(full_name: "Justin Gaethje", country_id: 1, height: 71, reach: 70, record: "24-4-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-05/JustinGaethjeHero.jpg?VersionId=ePVTlh_I5gQ07n3rY1pvBVuba8l9.84S&itok=aXqNF48t", division_id: 3)
Fighter.create(full_name: "Islam Makhachev", country_id: 5, height: 70, reach: 70.5, record: "22-1-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2019-04/IslamMakhachevHero.jpg?VersionId=tTF8iYytFRH.R2CQzDJa1tSuj6hARV3h&itok=dqZbobKX", division_id: 3)
Fighter.create(full_name: "Beneil Dariush", country_id: 9, height: 70, reach: 72, record: "21-4-1", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-08/BeneilDariushHeroUpdated.jpg?VersionId=S1gPrC3e0yZvEVMeMTX0UGr6XeHl31rm&h=d1cb525d&itok=hX99lLdW", division_id: 3)
Fighter.create(full_name: "Michael Chandler", country_id: 1, height: 68, reach: 71.5, record: "23-7-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-01/CHANDLER-MICHAEL_HERO_UPDATED-012321.png?VersionId=null&h=d1cb525d&itok=VqIhrOls", division_id: 3)
Fighter.create(full_name: "Rafael Dos Anjos", country_id: 0, height: 68, reach: 70, record: "31-13-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2019-05/RafealDosAnjosHero.jpg?VersionId=7LRSQxBaxIXbBr0ieQ8EuiOA8CuCYdrs&itok=Ei_NEnmU", division_id: 3)
Fighter.create(full_name: "Tony Ferguson", country_id: 1, height: 71, reach: 76.5, record: "26-8-0 ", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-12/TonyFergusonHeroUpdated.jpg?VersionId=null&h=d1cb525d&itok=rKqpBLvW", division_id: 3)
Fighter.create(full_name: "Gregor Gillespie", country_id: 1, height: 67, reach: 71, record: "14-1-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-03/031521-hero__3.jpg?VersionId=null&h=d1cb525d&itok=W9fPzRtK", division_id: 3)
Fighter.create(full_name: "Conor McGregor", country_id: 7, height: 69, reach: 74, record: "22-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-10/Conor%20McGregor%20Hero%202020%20246%20Cowboy.jpg?VersionId=null&h=4c12cb31&itok=7bWFSIXZ", division_id: 3)
Fighter.create(full_name: "Rafael Fiziev", country_id: 8, height: 68, reach: 71.5, record: "11-1-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-08/081021-rafael-fiziev-defeats-bobby-grean-at-ufc-265_athlete-page-hero_GettyImages-1332949334.jpg?h=d1cb525d&itok=SzM1pS0K", division_id: 3)

puts "🌱 Seeding Women's Strawweight"

Fighter.create(full_name: "Carla Esparza", country_id: 1, height: 61, reach: 63, record: "20-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-07/CarlaEsparzaHeroUpdated.jpg?VersionId=5uBoJyFzuKgXTKCln_w00GiRJHgVkUrV&h=d1cb525d&itok=oXIdu9pk", division_id: 0)
Fighter.create(full_name: "Zhang Weili", country_id: 10, height: 64, reach: 63, record: "21-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/%5Bdate%3Acustom%3AY%5D-%5Bdate%3Acustom%3Am%5D/042821-hero__1.jpg?VersionId=null&h=d1cb525d&itok=rsAXYacj", division_id: 0)
Fighter.create(full_name: "Rose Namajunas", country_id: 1, height: 65, reach: 65, record: "12-5-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/%5Bdate%3Acustom%3AY%5D-%5Bdate%3Acustom%3Am%5D/042821-hero__0.jpg?VersionId=null&h=d1cb525d&itok=-9IVpZ0i", division_id: 0)
Fighter.create(full_name: "Marina Rodriguez", country_id: 0, height: 66, reach: 65, record: "16-1-2", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-07/MarinaRodriguezHeroUpdated.jpg?VersionId=FipDgAN30B3ckuCoIPphaTk5q.9_M9dk&h=d1cb525d&itok=iIr3icbF", division_id: 0)
Fighter.create(full_name: "Mackenzie Dern", country_id: 1, height: 64, reach: 63, record: "12-2-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2018-10/GettyImages-957857928.jpg?VersionId=FTL2puj4cEF63MWuoFx48LVUABSrPkCn&itok=SYX0jVPW", division_id: 0)
Fighter.create(full_name: "Jessica Andrade", country_id: 0, height: 61.5, reach: 62, record: "23-9-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2019-08/andrade%20top%205%20finishes%20hero.jpg?VersionId=_m2gkkSu90ORLC82ej18sCrk88UbOTyp&itok=oKUq8Gg2", division_id: 0)
Fighter.create(full_name: "Yan Xiaonan", country_id: 10, height: 65, reach: 63, record: "15-3-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-02/YanXiaonanHeroUpdated.jpg?VersionId=sR8K9Z_5vfKszEqgx_n1US42mSzMu6iv&itok=YOBZG6xY", division_id: 0)
Fighter.create(full_name: "Nina Ansaroff", country_id: 1, height: 65, reach: 64, record: "10-7-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2018-10/GettyImages-1006434076.jpg?VersionId=n6XCxjAt3RgJhYlhoBm4e9eGgKh6eA7M&h=d1cb525d&itok=nb2-cjXX", division_id: 0)
Fighter.create(full_name: "Tecia Torres", country_id: 1, height: 61, reach: 60.5, record: "13-6-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2022-04/030219-Tecia-Torres-GettyImages-1128453696.jpg?h=d1cb525d&itok=6MzlgCX9", division_id: 0)
Fighter.create(full_name: "Amanda Ribas", country_id: 0, height: 64, reach: 66, record: "11-2-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2019-10/AmandaRibasHero.jpg?VersionId=7N1C40iFjsJhatMvUI_9gGyb9JCTHVml&itok=UjFXDm4v", division_id: 0)
Fighter.create(full_name: "Michelle Waterson", country_id: 1, height: 63, reach: 62, record: "18-9-0", img_url: "https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2020-09/MichellWatersonHeroUpdated.jpg?VersionId=RrSq8mZ8QIpuZXX0AAFiuMKK4Ew_3N4s&h=d1cb525d&itok=MGSjYDUi", division_id: 0)

puts "✅ Done seeding!"
