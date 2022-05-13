import MatchupCard from './MatchupCard'

function SavedMatchups({matches, handleDeleteMatch, handleEdit}) {

  const renderMatches = () => {
    return matches.map(match => <MatchupCard key={match.id} match={match} handleDeleteMatch={handleDeleteMatch} handleEdit={handleEdit} />)
  }

  return (
    <div className='matchups'>
      <h1 style={{'color':'white'}}>Your Saved Matchups!</h1>
      {renderMatches()}
    </div>
  )
}

export default SavedMatchups;