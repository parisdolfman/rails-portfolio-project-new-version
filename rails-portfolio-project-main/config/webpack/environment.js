const { environment } = require('@rails/webpacker')

module.exports = environment


const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
  })
)

module.exports = environment
