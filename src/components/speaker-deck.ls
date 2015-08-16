{ iframe, } = DOM
module.exports = React.create-class({
  render: ->
    iframe class-name: 'slide-frame', src: @props.url, frame-border: 0, allow-full-screen: true, scrolling: no
})
