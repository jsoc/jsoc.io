{ iframe } = DOM
module.exports = React.create-class({
  render: ->
    iframe class-name: 'video-frame', src: @props.url, frame-border: 0, allow-full-screen: true
})
