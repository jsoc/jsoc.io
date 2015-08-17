require! {
  react: {create-factory}:React
  }

global <<< { React, create-factory }
global.DOM = React.DOM

require! {
  \./components/header
  \./components/home
}

Header = create-factory header
Home   = create-factory home

module.exports = React.create-class({
  render: ->
    React.DOM.span null,
      Header data: @props 
      Home data: @props.data
})
