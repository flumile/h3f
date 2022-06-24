class InstructorsController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def create
    # 1) get values from params
    # 2) create new instructor from params that got from 1)
    # 3) If create successful, --> redirect to home page
    name = params["instructor"]["name"]
    level = params["instructor"]["level"]
    price = params["instructor"]["price"]
    role = params["instructor"]["role"]

    instructor = Instructor.new(name: name, level: level, price: price, role: role)
    if instructor.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end
end
