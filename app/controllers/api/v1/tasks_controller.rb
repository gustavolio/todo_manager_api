class Api::V1::TasksController < ApplicationController
    before_action :authenticate_with_token!

    def index
        tasks = current_user.tasks
        render json: {tasks: tasks}
    end

    def show
        task = current_user.tasks.find(params[:id])
        render json: task
    end

    def create
        task = current_user.tasks.build(task_params)
        if task.save
            render json: task
        else 
            render json: { errors: task.errors }
        end
    end

    def update
        task = current_user.tasks.find(params[:id])

        if task.update_attributes(task_params)
            render json: task
        else 
            render json: { errors: task.errors }
        end
    end

    def destroy
        task = current_user.tasks.find(params[:id])
        task.destroy
        head 204
    end

    def public_tasks
        task = Task.where(visible: true)
        render json: task
    end
    
    private 
    def task_params
        params.require(:task).permit(:title, :description, :status, :visible)
    end
end
