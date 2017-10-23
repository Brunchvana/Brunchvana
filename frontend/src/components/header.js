import React, { Component } from 'react';
import { NavLink } from 'react-router-dom';
import ReactDOM from 'react-dom';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import logo from '../logo.jpg'

// includes logo, social media, login/logout



export default class Header extends Component {
  render() {
    return (
      <nav className="pa3 pa4-ns">
        <a className="link dim black b f1 f-headline-ns tc db mb3 mb4-ns" href="/" title="Home"> BRUNCHvana </a>
        <div className="tc pb3">
          <NavLink className="link dim gray f6 f5-ns dib mr3" to= "/Home" > Home </NavLink>
          <NavLink className="link dim gray f6 f5-ns dib mr3" to= "/Events" > Events </NavLink>
          <NavLink className="link dim gray f6 f5-ns dib mr3" to= "/Login" > Login </NavLink>
          <NavLink className="link dim gray f6 f5-ns dib mr3" to="/Register"> Register </NavLink>
          {/* <NavLink className="link dim gray f6 f5-ns dib" to= "/Logout" > Logout </NavLink> */}
        </div>
      </nav>
    );
  }
}
