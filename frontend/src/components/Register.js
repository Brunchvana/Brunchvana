import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux'
import Header from './Header';
import Footer from './Footer';

class Register extends Component {
  constructor(props) {
    super(props)

    this.state = {
      email: '',
      name: '',
      password: '',
      hasRegistered: false
    }
  }
  updateRegisterUser = (event) => {
      this.setState({[event.target.name]: event.target.value})
  }

  handleSubmit = (event) => {
    event.preventDefault();
    console.log('submitting data', this.state);
    this.setState({hasRegistered: true})
  }
  render() {
    return (

      <article className="pa4 black-80">{!this.state.hasRegistered
          ? <form action="sign-up_submit" onSubmit={this.handleSubmit} method="post" accept-charset="utf-8">
            <fieldset id="sign_up" className="ba b--transparent ph0 mh0">
              <legend className="ph0 mh0 fw6 clip">Sign Up</legend>
              <div className="mt3">
                <label className="db fw4 lh-copy f6" for="email-address">Email address</label>
                <input className="pa2 input-reset ba bg-transparent w-100 measure" type="email" name="email" id="email-address"/></div>
                <div className="mt3">
                  <label className="db fw4 lh-copy f6" for="Name">Name</label>
                  <input className="pa2 input-reset ba bg-transparent w-100 measure" type="name" name="name" id="name"/></div>
                  <div className="mt3">
                    <label className="db fw4 lh-copy f6" for="password">Password</label>
                    <input className="b pa2 input-reset ba bg-transparent" type="password" name="password" id="password"/></div>
                  </fieldset>
                  <div className="mt3">
                    <input className="b ph3 pv2 input-reset ba b--black bg-transparent grow pointer f6" type="submit" value="Sign Up"/></div>
                  </form> : "you're registered" }
                </article> );
    }
}
        {/* } const mapStateToProps = (state) => {return {state}
}

        function mapDispatchToProps(dispatch) {return {
          register: (user) => {
            return dispatch(register(user))
          }
        }
} */}
