import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import Header from './Header';
import Footer from './Footer';
import Results from './Results';
import Search from './Search';

// (includes header, footer, search, results with restaurant cards)
export default class Home extends Component {

  render() {
    let homeStyle = {
      "textAlign": "center",
      "height": "30vw",
      "color": "#fff",
      // "backgroundImage": "url(https://static.pexels.com/photos/357573/pexels-photo-357573.jpeg)",
      "backgroundPosition": "center",
      "backgroundSize": "cover",
      "backgroundRepeat": "none"
    }
    return (
      <article class="mw5 mw6-ns center pt4">
        <div class="aspect-ratio aspect-ratio--3x4 mb4">
          <div class="aspect-ratio--object cover" style="background:url(https://static.pexels.com/photos/357573/pexels-photo-357573.jpeg) center;"></div>
        </div>
      </article>

    );
  }
}
