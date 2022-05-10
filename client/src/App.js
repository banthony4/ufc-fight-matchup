import './App.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { useState, useEffect } from "react";
import NavBar from './Components/NavBar';
import Home from './Components/Home';
import WeightClasses from './Components/WeightClasses';
import MatchupCreator from './Components/MatchupCreator';

function App() {
  const [fighters, setFighters] = useState([])
  
  useEffect(() => {
    fetch('http://localhost:9292/fighters')
  .then(r => r.json())
  .then(data => setFighters(data))
  }, [])

  console.log(fighters)

  return (
    <>
      <Router> 
        <NavBar />
        <Routes>
          <Route  exact path='/' element={<Home />} />
          <Route path='/weightclasses' element={<WeightClasses />}/>
          <Route path='/matchupcreator' element={<MatchupCreator fighters={fighters}/>}/>
        </Routes>
      </Router>
    </>
  );
}

export default App;
