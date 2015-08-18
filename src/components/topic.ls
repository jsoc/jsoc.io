{ h1, footer, p, section, header } = DOM

require! {
  \./speaker
  './video-embed'
  'react-slides': slides
}

Slides  = create-factory slides
Speaker = create-factory speaker
Video   = create-factory video-embed

module.exports = React.create-class({
  render: ->
    { description, title, slides, speaker, video } = @props.data
    section class-name: \topic,
      header null,
        h1 class-name: \title, title
      p class-name: \description, description
      if video
        Video url: video.url
      if slides
        Slides url: slides.url, service: slides.service, id: slides.id
      footer null,
        if speaker
          Speaker data: speaker
})
