class EntriesController < ApplicationController
  before_action :set_entry, only: %i[ destroy ]

  def index
    @entries = Entries.all
  end

  def confirm
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: "Entry was successfully created."}
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url, notice: "Entry was successfully destroyed." }
    end
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:user_name, :user_email, :reserved_date, :usage_time ,:room_id ,:people)
  end
end
