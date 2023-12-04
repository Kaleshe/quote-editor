def create
  @quote = current_company.quotes.build(quote_params)

  if @quote.save
    respond_to do |format|
      format.html { redirect_to quotes_path, notice: "Quote was successfully created." }
      format.turbo_stream { flash.now[:notice] = "Quote was successfully created." }
    end
  else
    render :new
  end
end
