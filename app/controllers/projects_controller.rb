class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.xml
  
  #before_filter lambda { @organization = Organization.find(params[:organization_id] )}
  
  def index
    @organization = Organization.find(params[:organization_id] )
    @projects = @organization.projects

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])
    @organization = @project.organization

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end
  
  def add_person
    @project = Project.find(params[:project_id])
    @posting = Posting.new(:person_id => params[:person_id],:lat => params[:lat],:lng => params[:lng],:project_id => params[:project_id])
    if @posting.save
      redirect_to project_path(@project)
    else
      
    end
  end
  
  def add_package
    @project = Project.find(params[:project_id])
    @package = Package.new(:identifier => params[:identifier],:sent_date => DateTime.parse(params[:sent_date]),:exp_delivery_date => DateTime.parse(params[:exp_delivery_date]),:source_lat => params[:source_lat],:source_lng => params[:source_lng],:dest_lat => params[:dest_lat],:dest_lng => params[:dest_lng],:project_id => @project.id)
    if @package.save
      redirect_to project_path(@project)
    else
      
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])
    @project.organization = @organization

    respond_to do |format|
      if @project.save
        format.html { redirect_to(@project, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(@project, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { head :ok }
    end
  end
end
