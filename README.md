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

This is a basic Ajax form that explicitly defines the URL to which the
request should be submitted.

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

This is a basic Ajax form with the Rails action specified rather than an
explicit URL. I am saying that I want the form request to be handled by that
action. The action's controller will be inferred as the controller for
this view. That controller plus the specified view will be resolved to the
URL which appears in the HTML.

```erb
<%= form_tag( { action: :simple_forms }, remote: true ) do %>
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

This is a basic Ajax form with both the controller and the action specified
in place of an explicit URL. By also declaring the controller, I have clear
indicated which action I intend. This also gives me the ability to specify
an action residing in a controller other than the current one. As in the
previous example, the controller and action specified will be resolved by
Rails to a URL that is used in the resulting HTML.

```erb
<%= form_tag( { controller: :pages, action: :simple_forms }, remote: true ) do %>
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
