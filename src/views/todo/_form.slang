- if todo.errors
  ul.errors
    - todo.errors.each do |error|
      li = error.to_s

== form(action: "/todos/#{todo.id.to_s}", method: todo.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "name", value: todo.name, placeholder: "Name", class: "form-control")
  .form-group
    == text_field(name: "description", value: todo.description, placeholder: "Description", class: "form-control")
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/todos", class: "btn btn-light btn-sm")
