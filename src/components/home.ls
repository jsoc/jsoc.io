{ div } = DOM
require! {
  \./event
}

Event  = create-factory event

module.exports = React.create-class({
  render: ->
    { events } = @props.data
    div class-name: 'event-list',
      events.map (event) -> (Event data: event)
})
