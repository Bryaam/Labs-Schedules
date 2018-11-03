$(document).on("turbolinks:load", function() {
  $(".datepicker").datepicker({
    format: 'yyyy-mm-dd'
  });

  $(".select").select2({
    theme: "bootstrap"
  });

  $('.timepicker').timepicker({
      timeFormat: 'h:mm p',
      interval: 30,
      minTime: '06',
      maxTime: '11:00pm',
      defaultTime: '06',
      startTime: '06:00am',
      dynamic: false,
      dropdown: true,
      scrollbar: true
  });

});
