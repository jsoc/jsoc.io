{ h1, div  } = DOM

require! {
  \./speaker
  './video-embed'
  './speaker-deck': slides
}

Slides  = create-factory slides
Speaker = create-factory speaker
Video   = create-factory video-embed

module.exports = React.create-class({
  render: ->
    { description, title, slides, speaker, video } = @props.data
    div class-name: \topic,
      h1 class-name: \title, title
      div class-name: \description, description
      if video
        Video url: video.url
      if slides
        Slides url: slides
      Speaker data: speaker
})
