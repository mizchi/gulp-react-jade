jade = require 'react-jade'
through = require 'through2'
replaceExt = require 'replace-ext'

module.exports = (opt) ->
  stream = through.obj (file, enc, callback) ->
    if file.isNull()
      @push(file)
      return callback()
    else if file.isBuffer()
      templateString = jade.compileClient(file.contents.toString(), opt).toString()
      file.contents = new Buffer 'module.exports = ' + templateString
      file.path = replaceExt(file.path, '.js')
      @push(file)
      return callback()
    else if file.isStream()
      throw new Error('Streams are not supported')
    return callback()
  return stream
