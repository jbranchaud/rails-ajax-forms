# rails-ajax-forms

> adding `remote: true` to Rails forms with wild abandon

## Playing with `form_tag` options

This is the most basic Ajax form with an explicit URL provided.

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
