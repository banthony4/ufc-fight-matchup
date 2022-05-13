import React, {useEffect, useState} from 'react'
import {Link} from 'react-router-dom'
import './MatchupCreator.css'

function MatchupCreator({addMatch, fighter1, setFighter1, fighter2, setFighter2, matchid, setMatchid, updateMatches}) {
  const[division, setDivision] = useState(0)
  const[divisionFighters, setDivisionFighters] = useState([])


  const selectFighter = (fighter) => {
    if(fighter1 === null) {
      setFighter1(fighter)
    } else if(fighter2 === null && fighter !== fighter1) {
      setFighter2(fighter)
    } else if(fighter === fighter1) {
      alert("A fighter can't be booked against themself!")
    } else {
      alert('Fighters have been chosen! Either remove a fighter or save the matchup.')
    }
  }

  useEffect(() => {
    fetch(`http://localhost:9292/divisions/${division}`)
    .then(r => r.json())
    .then(data => setDivisionFighters(data.fighters))
  },[division])

  const handleSave = () => {
    if(matchid){
      fetch(`http://localhost:9292/savedmatchups/${matchid}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          fighter1: fighter1.full_name,
          fighter1_img: fighter1.headshot_url,
          fighter2: fighter2.full_name,
          fighter2_img: fighter2.headshot_url
        }),
    })
    .then(r => r.json())
    .then(setMatchid(null))
    .then(match => updateMatches(match))
    } else {
      fetch('http://localhost:9292/savedmatchups', {
        method: 'POST',
        headers: {
          'content-type': 'application/json',
        },
        body: JSON.stringify({
          fighter1: fighter1.full_name,
          fighter1_img: fighter1.headshot_url,
          fighter2: fighter2.full_name,
          fighter2_img: fighter2.headshot_url
        })
      })
      .then(r => r.json())
      .then(match => addMatch(match))
    }
    setFighter1(null)
    setFighter2(null)
  }

  return (
    <div className="MatchupCreator">
      <div id='matchup'>
        <div className='fighter1'>
          {fighter1? <img src={fighter1.action_url} alt='fighter1'/> : null}
          <br></br> 
          {fighter1? <button className='button' onClick={() => setFighter1(null)}>Select Another Fighter</button> : null}
        </div>
        <div className='stats'>
          <h2 className='statline'>{fighter1? fighter1.full_name.split(" ")[1] : null} <span className='center-text'>vs.</span> {fighter2? fighter2.full_name.split(" ")[1] : null}</h2>
          <h2 className='statline'>{fighter1? `${fighter1.height}"` : null} <span className='center-text'>Height</span> {fighter2? `${fighter2.height}"` : null}</h2>
          <h2 className='statline'>{fighter1? `${fighter1.reach}"` : null} <span className='center-text'>Reach</span> {fighter2? `${fighter2.reach}"` : null}</h2>
          <h2 className='statline'>{fighter1? fighter1.wld : null} <span className='center-text'>Record</span> {fighter2? fighter2.wld : null}</h2>
          <br></br>
          <br></br>
          <Link to='/savedmatchups'>
            <button className='button' onClick={() => handleSave()}>Save Matchup</button>
          </Link>
        </div>
        <div className='fighter2'>
          {fighter2? <img src={fighter2.action_url} alt='fighter2'/> : null}
          <br></br>
          {fighter2? <button className='button' onClick={() => setFighter2(null)}>Select Another Fighter</button> : null}
        </div>
      </div>
      <ul className='divisions'>
        <button className='button' onClick={(e) => setDivision(e.target.id)} id='0'>Women's Strawweight</button>
        <button className='button' onClick={(e) => setDivision(e.target.id)} id='1'>Women's Bantamweight</button>
        <button className='button' onClick={(e) => setDivision(e.target.id)} id='2'>Men's Welterweight</button>
        <button className='button' onClick={(e) => setDivision(e.target.id)} id='3'>Men's Lightweight</button>
      </ul>
      <h1>Choose Your Fighter:</h1>
      <div className='fighters'>
        <h1 style={{'padding' : '10px'}}>Choose Your Fighter:</h1>
        {divisionFighters.map(fighter => {
          return <img className={fighter === fighter1 || fighter === fighter2?"selected":"unselected"} src={fighter.img_url} key={fighter.id} alt='fighter' onClick={() => selectFighter(fighter)}/>
        })}
      </div>
    </div>
  )
}

export default MatchupCreator