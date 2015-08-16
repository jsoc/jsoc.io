{ header, img, a } = DOM

module.exports = React.create-class({
  render: ->
    header null,
      img (src: \/logo.png, width: "100px")
})
