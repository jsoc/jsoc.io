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
    React.DOM.div class-name: \container,
      Header null
      Home data: @props.data
})
