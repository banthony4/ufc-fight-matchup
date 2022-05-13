import React from 'react'
import WeightClassCard from './WeightClassCard'

function WeightClasses({ fighters, divisions }) {
  
  const renderDivisions = () => {
    return divisions.map(division => <WeightClassCard key={division.id} division={division} fighters={fighters} /> )
  }

  return (
    <div className="weight-classes">
      {renderDivisions()}
    </div>
  )
}

export default WeightClasses