class ResumesController < ApplicationController
 require 'csv'
  def index


    @resume = Resume.new
    csv_clmn_name = Array.new
    myfile = 'public/'<<session[:filepath]

    unless myfile.nil? 
    
    rowarray = Array.new
    @rowarraydisp = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept]}) { |csv| csv.first }
    @csvclmnname = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept]}) { |csv| csv.first }
    else        
        render "new"
     end

  end

  def new
    @resume = Resume.new
  end

  def edit
    @resume = Resume.find(params[:id])
  end
  
  def show
    @resume = Resume.new
  end  

  def csv_to_array(file_location)
   csv = CSV::parse(File.open(file_location, 'r', {:col_sep => session[:source_col_sept], :headers=>true}) {|f| f.read })
   fields = csv.shift
   csv.collect { |record| Hash[*fields.zip(record).flatten ] } 
  end

  def update

    t = Time.now    
    myfile = 'public/'<<session[:filepath]
    
    postary = Array.new

    postfldary = Array.new

    csv_file = Array.new

    datary = Array.new

    postary = params[:resume].to_s.gsub(/[^A-Za-z, ]/, '').split(', ')
    @csvclmnname = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept]}) { |csv| csv.first }

    #session[:postfrm]=postary[:resume].map(&:inspect).join(', ')

    #session[:postfrm]=postary

    postfldary = postary

       
    session[:postfrm]=postfldary

     #@datary = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept]}) { |datarow| }
     @datary = csv_to_array(myfile)

    #csv_file = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept], :headers=>true})

    #CSV.open(myfile, 'a+', {:col_sep => session[:source_col_sept], :write_headers=> true, :headers => true}) do |hdr| 
    #  hdr.headers 
    #  hdr << postfldary
    #  csv_file.each do |rows|
    #   hdr << rows
    #  end 
    # end
     
    
    @rowarraydisp = postfldary
   
    @resume = Resume.new
    
    
    # unless myfile.nil?    
    #@rowarraydisp = CSV.open(myfile, 'r', {:col_sep => session[:source_col_sept]}) { |csv| csv.first }
    #else        
    #   render "new"
    #end 

   end

  def create
     session[:postfrm] = ""
    @resume = Resume.new(resume_params)
    session[:source_col_sept]=@resume.col_sept
    if @resume.save
      session[:filepath] = "#{@resume.attachment}"
      redirect_to resumes_path, notice: "The #{@resume.name} has been uploaded."
    else
      render "new"
    end
  end


  

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end



private
  def resume_params
    params.require(:resume).permit(:name, :attachment, :col_sept, :resumes, :arysize)
  end
end