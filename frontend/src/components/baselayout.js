import React, { Component } from 'react';
import header from './header';
import home from './home';
import footer from './footer';


export default class BaseLayout extends Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (

      <div>
        <header />
        {this.props.children}
        <footer />


      </div>
    );
  }
}
