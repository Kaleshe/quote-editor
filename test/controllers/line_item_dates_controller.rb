def update
  if @line_item_date.update(line_item_date_params)
    respond_to do |format|
      format.html { redirect_to quote_path(@quote), notice: "Date was successfully updated." }
      format.turbo_stream { flash.now[:notice] = "Date was successfully updated." }
    end
  else
    render :edit, status: :unprocessable_entity
  end
end
