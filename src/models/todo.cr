class Todo < Granite::Base
  connection sqlite
  table todos

  column id : Int64, primary: true
  column name : String?
  column description : String?
end
