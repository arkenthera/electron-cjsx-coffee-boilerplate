React = require 'react'
shell = require 'shell'

class Main extends React.Component
  state: {
    message: 'Hello, Electron'
  }
  constructor: () ->
    super()
  openGithub: () ->
    shell.openExternal('https://github.com/Quramy/electron-jsx-babel-boilerplate')
  render: () ->
    return (
      <div className="container">
        <div className="jumbotron main">
          <h1>{this.state.message}</h1>
          <img src="../assets/images/electron.svg" alt="" width="128px"></img>
          <p>Provieded from <a href="#" onClick={this.openGithub}>electron-boilerplate-jsx-babel<span className="glyphicon glyphicon-heart"></span></a></p>
        </div>
      </div>
    )

module.exports =
  Main: Main