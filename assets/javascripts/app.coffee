
$ ->
  console.log "This is Javascript!!!!"

  $("a.delete").on("click", (event) =>
    unitId = $(event.target).data('id')
    $.ajax({
      type: 'DELETE',
      url: "/units/#{unitId}"
      #success: =>
      #  window.location = '/units'
    })

  )