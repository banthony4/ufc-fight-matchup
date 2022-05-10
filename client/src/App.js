import './App.css';
import NavBar from './Components/NavBar';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import Home from './Components/Home';
import WeightClasses from './Components/WeightClasses';
import MatchupCreator from './Components/MatchupCreator';

function App() {
  
  return (
    <>
      <Router> 
        <NavBar />
        <Routes>
          <Route  exact path='/' element={<Home />} />
          <Route path='/weightclasses' element={<WeightClasses />}/>
          <Route path='/matchupcreator' element={<MatchupCreator />}/>
        </Routes>
      </Router>
    </>
  );
}

export default App;
