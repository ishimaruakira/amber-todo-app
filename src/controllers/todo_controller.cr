class TodoController < ApplicationController
  getter todo = Todo.new

  before_action do
    only [:show, :edit, :update, :destroy] { set_todo }
  end

  def index
    todos = Todo.all
    render "index.slang"
  end

  def show
    render "show.slang"
  end

  def new
    render "new.slang"
  end

  def edit
    render "edit.slang"
  end

  def create
    todo = Todo.new todo_params.validate!
    if todo.save
      redirect_to action: :index, flash: {"success" => "Todo has been created."}
    else
      flash[:danger] = "Could not create Todo!"
      render "new.slang"
    end
  end

  def update
    todo.set_attributes todo_params.validate!
    if todo.save
      redirect_to action: :index, flash: {"success" => "Todo has been updated."}
    else
      flash[:danger] = "Could not update Todo!"
      render "edit.slang"
    end
  end

  def destroy
    todo.destroy
    redirect_to action: :index, flash: {"success" => "Todo has been deleted."}
  end

  private def todo_params
    params.validation do
      required :name
      required :description
    end
  end

  private def set_todo
    @todo = Todo.find! params[:id]
  end
end
