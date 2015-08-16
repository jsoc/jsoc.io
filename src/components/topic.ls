{ h1, div  } = DOM

require! {
  \./speaker
}

Speaker = create-factory speaker

module.exports = React.create-class({
  render: ->
    { description, title, speaker } = @props.data
    div class-name: \topic,
      h1 class-name: \title, title
      div class-name: \description, description
      Speaker data: speaker
})
