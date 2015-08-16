var webpack     = require('webpack'),
    bourbon     = require('node-bourbon').includePaths,
    outPath     = __dirname + '/dist',
    resolve     = { 
      extensions: ['','.ls','.js','.json','.sass','.png','.jpg']
    },
   
  plugins     = [ 
      new webpack.HotModuleReplacementPlugin()
      ],
    
    modules     = {
      loaders: [
      { test: /\.(png|jpg)$/, loader: 'url-loader?limit=8192&name=/images/[name].[ext]&context=./src/images'},
      { test: /\.ls$/, loader: 'livescript-loader?const=true' },
      { test: /\.json$/, loader: 'json' },
      { 
        test: /\.sass$/,
        loader: 'style!css!sass?indentedSyntax&' +
        "includePaths[]=" + bourbon + "&" +
        "includePaths[]=" + __dirname + "./src/sass"
      }
        ]
     };

module.exports = {
  entry: [
    './src/entry',
    'webpack/hot/dev-server',
  ],

  output: {
    path       : outPath,
    filename   : 'main.js',
  },
  resolve: resolve,
  module: modules,
  plugins: plugins

};
