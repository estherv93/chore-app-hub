class ChoreListsController < ApplicationController
  before_action :set_chore_list, only: [:show, :edit, :update, :destroy]

  # GET /chore_lists
  # GET /chore_lists.json
  def index
    @chore_lists = ChoreList.all
  end

  # GET /chore_lists/1
  # GET /chore_lists/1.json
  def show
  end

  # GET /chore_lists/new
  def new
    @chore_list = ChoreList.new
  end

  # GET /chore_lists/1/edit
  def edit
  end

  # POST /chore_lists
  # POST /chore_lists.json
  def create
    @chore_list = ChoreList.new(chore_list_params)

    respond_to do |format|
      if @chore_list.save
        format.html { redirect_to @chore_list, notice: 'Chore list was successfully created.' }
        format.json { render :show, status: :created, location: @chore_list }
      else
        format.html { render :new }
        format.json { render json: @chore_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chore_lists/1
  # PATCH/PUT /chore_lists/1.json
  def update
    respond_to do |format|
      if @chore_list.update(chore_list_params)
        format.html { redirect_to @chore_list, notice: 'Chore list was successfully updated.' }
        format.json { render :show, status: :ok, location: @chore_list }
      else
        format.html { render :edit }
        format.json { render json: @chore_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chore_lists/1
  # DELETE /chore_lists/1.json
  def destroy
    @chore_list.destroy
    respond_to do |format|
      format.html { redirect_to chore_lists_url, notice: 'Chore list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chore_list
      @chore_list = ChoreList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chore_list_params
      params.require(:chore_list).permit(:title)
    end
end
