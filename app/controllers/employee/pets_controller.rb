class Employee::PetsController < Employee::AuthenticatedController
  before_action :set_employee_pet, only: [:show, :edit, :update, :destroy]

  # GET /employee/pets
  # GET /employee/pets.json
  def index
    @employee_pets = Employee::Pet.all
  end

  # GET /employee/pets/1
  # GET /employee/pets/1.json
  def show
  end

  # GET /employee/pets/new
  def new
    @employee_pet = Employee::Pet.new
  end

  # GET /employee/pets/1/edit
  def edit
  end

  # POST /employee/pets
  # POST /employee/pets.json
  def create
    @employee_pet = Employee::Pet.new(employee_pet_params)

    respond_to do |format|
      if @employee_pet.save
        format.html { redirect_to @employee_pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @employee_pet }
      else
        format.html { render :new }
        format.json { render json: @employee_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee/pets/1
  # PATCH/PUT /employee/pets/1.json
  def update
    respond_to do |format|
      if @employee_pet.update(employee_pet_params)
        format.html { redirect_to @employee_pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_pet }
      else
        format.html { render :edit }
        format.json { render json: @employee_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee/pets/1
  # DELETE /employee/pets/1.json
  def destroy
    @employee_pet.destroy
    respond_to do |format|
      format.html { redirect_to employee_pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_pet
      @employee_pet = Employee::Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_pet_params
      params[:employee_pet]
    end
end
