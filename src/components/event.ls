{ h1, address, header, article  } = DOM

require! {
  \./topic
  \moment
}

Topic = create-factory topic

module.exports = React.create-class({
  render: ->
    { topics, date, location } = @props.data
    pretty-date = moment(parseInt(date)).format("ddd, MMMM, Do, YYYY, h:mma")
    article class-name: \event,
      header null,
        h1 class-name: \date, pretty-date
        address null, location
      topics.map (topic) -> (Topic data: topic)
})
