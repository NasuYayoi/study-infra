$(document).on('turbolinks:load', function() {

  $('.what_infra_link').on("click", function() {
    $('section').css('display','none');
    $('.what_infra').css('display','block');
  });

  $('.server_link').on("click", function() {
    $('section').css('display','none');
    $('.server').css('display','block');
  });

  $('.network_link').on("click", function() {
    $('section').css('display','none');
    $('.network').css('display','block');
  });

  $('.os_link').on("click", function() {
    $('section').css('display','none');
    $('.os').css('display','block');
  });

  $('.storage_link').on("click", function() {
    $('section').css('display','none');
    $('.storage').css('display','block');
  });

  $('.virtualization_link').on("click", function() {
    $('section').css('display','none');
    $('.virtualization').css('display','block');
  });

  $('.cloud_link').on("click", function() {
    $('section').css('display','none');
    $('.cloud').css('display','block');
  });

  $('.linux_link').on("click", function() {
    $('section').css('display','none');
    $('.linux').css('display','block');
  });

  $('.env_const_link').on("click", function() {
    $('section').css('display','none');
    $('.env_const').css('display','block');
  });

  $('.command_link').on("click", function() {
    $('section').css('display','none');
    $('.command').css('display','block');
  });

  $('.ses_etc_link').on("click", function() {
    $('section').css('display','none');
    $('.ses_etc').css('display','block');
  });

  $('.experience_link').on("click", function() {
    $('section').css('display','none');
    $('.experience').css('display','block');
  });

  // var target = $(event.target);
  // $('.' + $(target)).on("click", function() {
  // $('section').css('display','none');
  // $('.' + $(target)).css('display','block');
  // });
});
