import './App.css';
import NavBar from './Components/NavBar';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import Home from './Components/Home';
import WeightClasses from './Components/WeightClasses';

function App() {
  return (
    <>
      <Router> 
        <NavBar />
        <Routes>
          <Route  exact path='/' element={<Home />} />
          <Route path='/weightclasses' element={<WeightClasses />}/>
        </Routes>
      </Router>
    </>
  );
}

export default App;
