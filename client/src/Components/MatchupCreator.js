import React, {useState} from 'react'
import './MatchupCreator.css'


function MatchupCreator() {
  const[fighter1, setFighter1] = useState(null)
  const[fighter2, setFighter2] = useState(null)

  const selectFighter = (fighter) => {
    if (fighter1) {
      setFighter1(fighter)
    } else if(fighter2){
      setFighter2(fighter)
    }
    else {
      alert('Fighters have been chosen!')
    }
  }

  return (
    <div className="MatchupCreator">
      <div id='matchup'>
        <div className='fighter1'>
        <img src='https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-05/051721-hero__1.jpg?VersionId=null&h=d1cb525d&itok=Wd0RKiqZ' alt='fighter1'/>
        </div>
        <div className='stats'>
          <h2>fighter1 AGE fighter2</h2>
          <h2>fighter1 Weight fighter2</h2>
          <h2>fighter1 Height fighter2</h2>
          <h2>fighter1 Reach fighter2</h2>
          <h2>fighter1 Record fighter2</h2>
        </div>
        <div className='fighter2'>
          <img src='https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_xl/s3/2021-01/Porier-Dustin_HERO_Updated-012621.png?VersionId=null&h=d1cb525d&itok=XKmppk50' alt='fighter2'  />
        </div>
      </div>
      <h1>Choose Your Fighter:</h1>
      <div className='fighters'>
        <img src='https://dmxg5wxfqgb4u.cloudfront.net/styles/event_results_athlete_headshot/s3/2021-04/68441%252Fprofile-galery%252Fprofile-picture%252FUSMAN_KAMARU_BELT_04-24.png?VersionId=null&itok=Fm51Dbcc' alt='fighter' onClick={() => selectFighter()}/>
      </div>
    </div>
  )
}

export default MatchupCreator