{ h1, div  } = DOM

require! {
  \./topic
  \moment
}

Topic = create-factory topic

module.exports = React.create-class({
  render: ->
    { topics, date, location } = @props.data
    pretty-date = moment(parseInt(date)).format("ddd, MMMM, Do, YYYY, h:mma")
    div class-name: \event,
      h1 class-name: \title, "#{pretty-date} - #{location}"
      topics.map (topic) -> (Topic data: topic)
})
