class PagesController < ApplicationController
  def home
    require "prawn"
    
    # @products = Product.all
 
#     respond_to do |format|
#       format.html
#       format.pdf do
#         pdf = Prawn::Document.new
#         send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
#       end
#     end
    
#     def hello_world
#       Prawn::Document.generate("hello.pdf") do
#         text "Hello World!"
#       end
#     end
    
    # Assignment
    pdf = Prawn::Document.new
    pdf.text "Hello World"
    pdf.render_file "assignment.pdf"

    # Implicit Block
    Prawn::Document.generate("implicit.pdf") do
      text "Hello World"
    end

    # Explicit Block
    Prawn::Document.generate("explicit.pdf") do |pdf|
      pdf.text "Hello World"
    end
    
  end 
end
