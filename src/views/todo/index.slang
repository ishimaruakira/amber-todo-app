.row
  .col-sm-11
    h2 Todos
  .col-sm-1
    a.btn.btn-success.btn-sm href="/todos/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Name
        th Description
        th Actions
    tbody
      - todos.each do |todo|
        tr
          td = todo.name
          td = todo.description
          td
            span
              == link_to("Show", "/todos/#{todo.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/todos/#{todo.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/todos/#{ todo.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
