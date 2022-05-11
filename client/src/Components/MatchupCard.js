import React from 'react'

function MatchupCard({match}) {
  return (
    <div className='matchupCard'>
      <img src={match.fighter1_img} alt='fighter1' />
      <img src={match.fighter2_img} alt='fighter1' />
      <h2>{match.fighter1} vs {match.fighter2}</h2>
    </div>
  )
}

export default MatchupCard