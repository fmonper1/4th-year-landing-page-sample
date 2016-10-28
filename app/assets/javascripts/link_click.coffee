$ ->
  $('a').click ->
    $.post('/link_clicks', {
        url: $(this).attr('href'),
        link_css_id: $(this).attr('id'),
        link_name: $(this).data('link-name')
      }
    )