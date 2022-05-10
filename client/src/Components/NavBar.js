import React, { useState } from "react";
import { Link } from "react-router-dom";
import * as FaIcons from 'react-icons/fa'
import * as AiIcons from 'react-icons/ai'
import './Navbar.css'
import { IconContext } from 'react-icons'

function NavBar() {
  const [sidebar, setSidebar] = useState(false)

  const showSidebar = () => setSidebar(!sidebar)

  return (
    <>
    <IconContext.Provider value={{color: "#fff"}}>
      <div className='navbar'>
        <Link to='#' className="menu-bars">
          <FaIcons.FaBars onClick={showSidebar}/>
        </Link>
      </div>
      <nav className={sidebar ? 'nav-menu active' : 'nav-menu'}>
        <ul className='nav-menu-items' onClick={showSidebar}>
          <li className="navbar-toggle">
            <Link to="#" className='menu-bars'>
              <AiIcons.AiOutlineClose />
            </Link>
          </li>
          <li className='nav-text'>
            <Link to='/'>
              Home
            </Link>
          </li>
          <li className='nav-text'>
            <Link to='/weightclasses'>
              Weight Classes
            </Link>
          </li>
          <li className='nav-text'>
            <Link to='/fightercountries'>
              Fighter Countries
            </Link>
          </li>
          <li className='nav-text'>
            <Link to='/matchupcreator'>
              Matchup Creator
            </Link>
          </li>
        </ul>
      </nav>
      </IconContext.Provider>
    </>
  );
}

export default NavBar;