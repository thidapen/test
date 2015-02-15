animations = angular.module("animations")
animations.animation('.switch-animation', ->
	enter: (element, done) ->
      width = $(element.parent()).width()
      $(element).css
        width: width
        top: 0
        left: width
      $(element).animate { left: 0 }, done
)