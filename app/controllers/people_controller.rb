class PeopleController < ApplicationController
  def index
      @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      flash.now[:alert] = 'Error: Enter Valid Information'
      render :new
    end
  end

def destroy
  Person.find(params[:id]).destroy
  redirect_to people_path
end

  private
    def person_params
      params.require(:person).permit(
      :name, :age, :hair_color,
      :eye_color, :gender, :alive
      )
    end

end
