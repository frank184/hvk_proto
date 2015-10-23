class Employee::ReservationsController < Employee::AuthenticatedController
  before_action :set_employee_reservation, only: [:show, :edit, :update, :destroy]

  # GET /employee/reservations
  # GET /employee/reservations.json
  def index
    @employee_reservations = Employee::Reservation.all
  end

  # GET /employee/reservations/1
  # GET /employee/reservations/1.json
  def show
  end

  # GET /employee/reservations/new
  def new
    @employee_reservation = Employee::Reservation.new
  end

  # GET /employee/reservations/1/edit
  def edit
  end

  # POST /employee/reservations
  # POST /employee/reservations.json
  def create
    @employee_reservation = Employee::Reservation.new(employee_reservation_params)

    respond_to do |format|
      if @employee_reservation.save
        format.html { redirect_to @employee_reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @employee_reservation }
      else
        format.html { render :new }
        format.json { render json: @employee_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee/reservations/1
  # PATCH/PUT /employee/reservations/1.json
  def update
    respond_to do |format|
      if @employee_reservation.update(employee_reservation_params)
        format.html { redirect_to @employee_reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_reservation }
      else
        format.html { render :edit }
        format.json { render json: @employee_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee/reservations/1
  # DELETE /employee/reservations/1.json
  def destroy
    @employee_reservation.destroy
    respond_to do |format|
      format.html { redirect_to employee_reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_reservation
      @employee_reservation = Employee::Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_reservation_params
      params[:employee_reservation]
    end
end
