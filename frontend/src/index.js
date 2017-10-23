import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import App from './components/App';
import { Link } from 'react-router-dom';
import registerServiceWorker from './registerServiceWorker';
import './index.css';

import BaseLayout from './components/BaseLayout';
import Home from './components/Home';
// import Events from './components/Events';
import Login from './components/Login';
// import logout from './components/logout';

ReactDOM.render(
  <BrowserRouter>
    <BaseLayout>
      <Switch>
        <Route exact path="/" component={ Home } />
        {/* <Route path="/Events" component={ Events } /> */}
        <Route path="/Login" component={ Login } />
        {/* <Route path="/logout" component={ logout } /> */}
      </Switch>
    </BaseLayout>
  </BrowserRouter>


  , document.getElementById('root'));
  registerServiceWorker();
