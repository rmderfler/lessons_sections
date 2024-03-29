class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to("/sections")
    else
      render('sections/new.html.erb')
    end
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      redirect_to("/")
    else
      render('sections/edit.html.erb')
    end
  end

  def edit
    @section = Section.find(params[:id])
    @lessons = Lesson.all
    render('sections/edit.html.erb')
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    render('sections/destroy.html.erb')
  end


end
