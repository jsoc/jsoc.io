{ img, p, span, section, h1, a, ul, li } = DOM
require! {
  './social-icons': icon
}

Icon = create-factory icon
module.exports = React.create-class({
  render: ->
    { data } = @props
    section class-name: \speaker,
      if data.image
        img class-name: 'speaker-pic', src: data.image
      span class-name: \speaker-summary,  
        h1 null, data.name
        if data.bio
          p class-name: \bio, data.bio
        if data.github || data.twitter || data.npm
          ul class-name: \social,
            if data.github
              li null,
                Icon network: \github, url: "https://github.com/#{data.github}"
            if data.twitter
              li null,
                Icon network: \twitter, url: "https://twitter.com/#{data.github}"
            if data.npm
              li null,
                Icon network: \npm, url: "https://www.npmjs.com/~#{data.npm}"
})
