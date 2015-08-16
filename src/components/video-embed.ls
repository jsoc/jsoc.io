{ iframe, div } = DOM
module.exports = React.create-class({
  render: ->
    div class-name: 'video-frame', 'data-aspect-ratio': '16:9',
      iframe class-name: 'video-frame', src: @props.url, frame-border: 0, allow-full-screen: true
})
