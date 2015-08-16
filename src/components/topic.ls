{ h1, div  } = DOM

require! {
  \./speaker
  './video-embed'
}

Speaker = create-factory speaker
Video   = create-factory video-embed
module.exports = React.create-class({
  render: ->
    { description, title, speaker, video } = @props.data
    div class-name: \topic,
      h1 class-name: \title, title
      div class-name: \description, description
      if video
        Video url: video.url
      Speaker data: speaker
})
