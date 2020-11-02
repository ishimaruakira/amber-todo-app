h1 Show Todo
p = todo.name
p = todo.description
p
  == link_to("Back", "/todos", class: "btn btn-light btn-sm")
  == link_to("Edit", "/todos/#{todo.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/todos/#{todo.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
