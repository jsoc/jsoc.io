{ iframe, div } = DOM
module.exports = React.create-class({
  render: ->
    div class-name: 'slide-frame', 'data-aspect-ratio': '16:9',
      iframe src: @props.url, frame-border: 0, allow-full-screen: true, scrolling: no
})
