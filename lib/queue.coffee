class Queue
  data: [ ]

  show: ->
    @data

  pop: () ->
    @data.pop()

  length: ->
    @data.length

  push: (track) ->
    return false if @data.length > 10 || @trackIsInQueue(track)
    @data.push(track)

  trackIsInQueue: (track) ->
    @data.filter( (obj) ->
      obj.link == track.link
    ) > 0

module.exports = Queue