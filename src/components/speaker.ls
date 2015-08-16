{ img, dd, dl, dt, a } = DOM
require! {
  './social-icons': icon
}

Icon = create-factory icon 
module.exports = React.create-class({
  render: ->
    { data } = @props
    dl class-name: \speaker,
      dt class-name: \name, data.name
      dd class-name: 'speaker-pic', 
        img src: data.image
      if data.bio
        dd class-name: \bio, data.bio
      if data.github
        Icon network: \github, url: "https://github.com/#{data.github}"
      if data.twitter
        Icon network: \twitter, url: "https://twitter.com/#{data.github}"
      if data.npm
        Icon network: \npm, url: "https://www.npmjs.com/~#{data.npm}"
})
