

$(function() {
  console.log('test');

  $('a.show-artist').click(function(evt) {
    evt.preventDefault();

    var modalId = $(this).attr('data-showartist');
    console.log('show artist ', modalId);

    var content = $(modalId).html();
    $('body #modal-spot').html(content);
    $('#modal-spot').modal('show');
  });

  $("#modal-spot").on('hidden.bs.modal', function() {
    console.log("hidden!");
    $('#modal-spot').html("");
  });

});
