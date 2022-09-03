class TasksController < ApplicationController
  def all
    @all = Task.all
  end
end
