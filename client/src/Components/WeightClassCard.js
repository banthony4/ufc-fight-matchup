import React from 'react'

function WeightClassCard({division, fighters}) {
  return (
    <div className='weight-class-card'>
      <h1 className='division'>{division.name}</h1>
      <h2 className='weight-limit'>UFC {division.weight_limit}</h2>
      <ol>
        {fighters.map(fighter => {
          return fighter.division_id === division.id ? <li>{fighter.full_name}</li> : null 
        })}
      </ol>
    </div>
  )
}

export default WeightClassCard