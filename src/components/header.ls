{ header, img, a, ul, li } = DOM

require! {
  './social-icons': icon
}

Icon = create-factory icon

module.exports = React.create-class({
  render: ->
    header null,
      img (src: \/logo.png, width: "100px")
      ul class-name: \social,
        li null,
          Icon network: \twitter, url: "https://twitter.com/javascriptoc"
        li null,
          Icon network: \github, url: "https://github.com/jsoc"
        li null,
          Icon network: \youtube, url: "https://www.youtube.com/user/javascriptoc/"
})
