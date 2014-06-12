# rails-ajax-forms

> adding `remote: true` to Rails forms with wild abandon

## Playing with `form_tag` options

All of the following form examples are built using Rails'
[`form_tag`](http://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-form_tag).
The idea is that these forms are being used to make
[Ajax](https://developer.mozilla.org/en/docs/AJAX) requests. To enable this
Ajax behavior, all the forms have `remote` set to `true`. To give our forms
some body, they each include a text field and submit button, but these do
not currently do anything interesting.

```erb
<%= form_tag( '/pages/simple_forms', remote: true ) do %>
  <%= text_field_tag 'search_field', "" %>
  <%= submit_tag "Search", name: nil %>
<% end %>
```

```html
<form accept-charset="UTF-8" action="/pages/simple_forms" data-remote="true" method="post">
  <div style="margin:0;padding:0;display:inline">
    <input name="utf8" type="hidden" value="&#x2713;" />
  </div>
  <input id="search_field" name="search_field" type="text" value="" />
  <input type="submit" value="Search" />
</form>
```
