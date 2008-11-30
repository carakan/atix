class RevistasController < ApplicationController
  # GET /revistas
  # GET /revistas.xml
  def index
    @revistas = Revista.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @revistas }
    end
  end

  # GET /revistas/1
  # GET /revistas/1.xml
  def show
    @revista = Revista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @revista }
    end
  end

  # GET /revistas/new
  # GET /revistas/new.xml
  def new
    @revista = Revista.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @revista }
    end
  end

  # GET /revistas/1/edit
  def edit
    @revista = Revista.find(params[:id])
  end

  # POST /revistas
  # POST /revistas.xml
  def create
    @revista = Revista.new(params[:revista])

    respond_to do |format|
      if @revista.save
        flash[:notice] = 'Revista was successfully created.'
        format.html { redirect_to(@revista) }
        format.xml  { render :xml => @revista, :status => :created, :location => @revista }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @revista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /revistas/1
  # PUT /revistas/1.xml
  def update
    @revista = Revista.find(params[:id])

    respond_to do |format|
      if @revista.update_attributes(params[:revista])
        flash[:notice] = 'Revista was successfully updated.'
        format.html { redirect_to(@revista) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @revista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /revistas/1
  # DELETE /revistas/1.xml
  def destroy
    @revista = Revista.find(params[:id])
    @revista.destroy

    respond_to do |format|
      format.html { redirect_to(revistas_url) }
      format.xml  { head :ok }
    end
  end
end
