$(document).ready(function() {

  var save = function () {

    $.ajax({
      url: 'save',
      type: 'PUT',
      contentType: 'application/json',
      data: {
        'name': $('.name-field').val(),
        'town': $('.town-field').val()
      },
      success: function (data, type, xhr) {
        alert('hi');
      }
    });

    return false;
  }


  $('button#random').click(save);

});