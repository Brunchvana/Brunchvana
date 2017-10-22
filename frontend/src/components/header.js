import React, { Component } from 'react';
import { NavLink } from 'react-router-dom';
import logo from '../logo.jpg'

export default class Header extends Component {
  render() {
    return (
      <nav class="pa3 pa4-ns">
        <a class="link dim black b f1 f-headline-ns tc db mb3 mb4-ns" href="/" title="Home">BRUNCHvana</a>
        <div class="tc pb3">
          <a class="link dim gray f6 f5-ns dib mr3" href="/" title="Home">Home</a>
          <a class="link dim gray f6 f5-ns dib mr3" href="#" title="Events">Events</a>
          <a class="link dim gray f6 f5-ns dib mr3" href="#" title="">Login</a>
          <a class="link dim gray f6 f5-ns dib" href="#" title="Contact"></a>
        </div>
      </nav>
    );
  }
}
