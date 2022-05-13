import React from 'react'
import { Link } from "react-router-dom";

function MatchupCard({match, handleDeleteMatch, handleEdit}) {

  const handleDelete = () => {
    fetch(`http://localhost:9292/savedmatchups/${match.id}`,{
      method: 'DELETE'
    })
    .then(r => r.json())
    .then(data => handleDeleteMatch(data))
  }


  return (
    <div>
      <div className='matchupCard'>
        <img src={match.fighter1_img} alt='fighter1' />
        <img style={{'transform': 'scaleX(-1)'}} src={match.fighter2_img} alt='fighter2' />
        <h2>{match.fighter1} vs {match.fighter2}</h2>
      </div>
      <button className='button' onClick={handleDelete}>Delete Matchup</button>
      <Link to='/matchupcreator'>
        <button className='button' onClick={() => handleEdit(match)}>New Challenger</button>
      </Link>
    </div>
  )
}

export default MatchupCard