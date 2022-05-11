import React, {useState, useEffect} from 'react'
import MatchupCard from './MatchupCard'

function Matchups() {
  const[matches, setMatches] = useState([])

  useEffect(() => {
    fetch('http://localhost:9292/savedmatchups')
    .then(r => r.json())
    .then(data => setMatches(data))
  }, [])

  const renderMatches = () => {
    return matches.map(match => <MatchupCard key={match.id} match={match} />)
  }

  return (
    <div className='matchups'>
      <h1>matchups</h1>
      {renderMatches()}
    </div>
  )
}

export default Matchups