class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  def index
    respond_to :html, :js
    @registers = Register.all.order("created_at desc")
    @registers = @registers.paginate(:page => params[:page], :per_page => 20)
  end

  def list
    respond_to :html, :js
    @registers = Array.new
    if params[:query].empty? || params[:query] == "all"
      @registers = Register.all.order("created_at desc")
    else
      @registers = Register.search_registers(params[:query])
    end
      @registers = @registers.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @register = Register.find(params[:id])
  end

  def printa
    respond_to :html, :js
    @register = Register.find(params[:id])
  end

  def printupdate
    respond_to :html, :js
    @register = Register.find(params[:id])
    @register.status = 1
    @register.save
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers
  def create
    respond_to do |format|
      @register = Register.new(register_params)

      if @register.save
        @register.convert_ticket_number
        @register.save
        format.html { redirect_to new_register_path, notice: "#{@register.first_name} #{@register.last_name} with Ticket Number #{@register.ticket_number} has been successfully registered." }
      else
        format.html { render :new }
        format.js { flash.now[:warning] = @register.errors.full_messages }
      end
    end
  end

  # PATCH/PUT /registers/1
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
      else
        format.html { render :edit }
        format.js { flash.now[:warning] = @register.errors.full_messages }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    def require_login
      unless logged_in?
        flash[:alert] = "You must be logged in to access this section"
        redirect_to root_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:first_name, :last_name, :phone_number, :email, :drawing_chance)
    end
end
