var ExtractTextPlugin = require("extract-text-webpack-plugin")
module.exports = {
  entry: [
    "./web/static/js/app.js",
    "./web/static/css/app.scss"
],
  output: {
    path: "./priv/static",
    filename: "js/app.js"
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel",
        query: {
          presets: [
            "es2015"
          ]
        }
      },
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract("style", "css")
      },
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract(
          "style",
          "css!sass?includePaths[]=" + __dirname + "/node_modules")
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin("css/app.css")
  ],
  resolve: {
    modulesDirectories: [
      "node_modules",
      __dirname + "web/static/js"
    ]
  }
}
