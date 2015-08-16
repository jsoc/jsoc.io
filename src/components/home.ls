{ div } = DOM
require! {
  \./event
}

Event = create-factory event

module.exports = React.create-class({
  render: -> 
    { events } = @props.data
    console.log @props
    div class-name: \balls,
      events.map (event) -> (Event data: event)
})
