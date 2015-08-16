require! {
  react: {create-factory}:React
  './App': '_App'
  \./data.json
  \./sass/main.sass
}


# React has gotten silly.
App = create-factory _App

content = document.getElementById \content
React.render (App data: data), content
