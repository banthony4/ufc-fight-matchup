import './App.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { useState, useEffect } from "react";
import NavBar from './Components/NavBar';
import Home from './Components/Home';
import WeightClasses from './Components/WeightClasses';
import MatchupCreator from './Components/MatchupCreator';
import SavedMatchups from './Components/SavedMatchups';
import FighterCountries from './Components/FighterCountries';

function App() {
  const[fighters, setFighters] = useState([])
  const[fighter1, setFighter1] = useState(null)
  const[fighter2, setFighter2] = useState(null)
  const[divisions, setDivisions] = useState([])
  const[matches, setMatches] = useState([])
  const[matchid, setMatchid] = useState(null)
  
  useEffect(() => {
    fetch('http://localhost:9292/fighters')
  .then(r => r.json())
  .then(data => setFighters(data))
  }, [])
  
  useEffect(() => {
    fetch('http://localhost:9292/divisions')
  .then(r => r.json())
  .then(data => setDivisions(data))
  }, [])

  useEffect(() => {
    fetch('http://localhost:9292/savedmatchups')
    .then(r => r.json())
    .then(data => setMatches(data))
  }, [])

  const handleDeleteMatch = (match) => {
    setMatches(matches.filter(matchup => matchup.id !== match.id))
  }
  const addMatch = (match) => {
    setMatches(matches => [...matches, match])
  }
  const updateMatches = (match) => {
    setMatches(matches.map(ogmatch => {
      if(ogmatch.id === match.id){
        return match
      } else{
        return ogmatch
      }
    }))
  }

  const handleEdit = (match) => {
    setFighter1(fighters.find(fighter => fighter.full_name === match.fighter1))
    setFighter2(fighters.find(fighter => fighter.full_name === match.fighter2))
    setMatchid(match.id)
  }
  console.log('matchid: ', matchid);


  return (
    <>
      <Router> 
        <NavBar />
        <Routes>
          <Route  exact path='/' element={<Home />} />
          <Route path='/weightclasses' element={<WeightClasses fighters={fighters} divisions={divisions}/>}/>
          <Route path='/fightercountries' element={<FighterCountries />}/>
          <Route path='/matchupcreator' element={<MatchupCreator fighters={fighters} fighter1={fighter1} fighter2={fighter2} setFighter1={setFighter1} setFighter2={setFighter2} addMatch={addMatch} matchid={matchid} setMatchid={setMatchid} updateMatches={updateMatches}/>}/>
          <Route path='/savedmatchups' element={<SavedMatchups matches={matches} handleDeleteMatch={handleDeleteMatch} handleEdit={handleEdit}/>}/>
        </Routes>
      </Router>
    </>
  );
}

export default App;
