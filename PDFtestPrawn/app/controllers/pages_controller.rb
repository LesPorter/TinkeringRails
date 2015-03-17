class PagesController < ApplicationController
  def home
    require "prawn"
    
    # Create the document object
    pdf = Prawn::Document.new
    # pdf.text "Hello World."
    
    # Draw the X and Y axis
    pdf.stroke_axis
    
    # Draw some shapes
    # ---------------------------------------------------------------------------------
    
    # Draw a circle at (0,0). 10 represents the circle's radius
#     pdf.stroke_circle [0, 0], 10

#     # Draw a box that starts at (100, 300). 
#     pdf.bounding_box([100, 300], :width => 300, :height => 200) do
#       pdf.stroke_bounds
#       # Draw a circle at (0,0) in the box.
#       pdf.stroke_circle [0, 0], 10
#     end

    # Draw text at various positions
    # ---------------------------------------------------------------------------------
    
    # Print the cursor Y position
#     pdf.text "the cursor is here: #{pdf.cursor}"
#     pdf.text "now it is here: #{pdf.cursor}"
    
#     # Move the cursor down
#     pdf.move_down 200
#     pdf.text "on the first move the cursor went down to: #{pdf.cursor}"
    
#     # Move the cursor up
#     pdf.move_up 100
#     pdf.text "on the second move the cursor went up to: #{pdf.cursor}"

#     # Move the cursor to Y=50
#     pdf.move_cursor_to 50
#     pdf.text "on the last move the cursor went directly to: #{pdf.cursor}"

    # Embed an image
    # -------------------------------------------------------------------------
    
#     # Add an image at the top of the document
#     pdf.text "The image will go right below this line of text."
#     pdf.image "app/assets/images/Les-Porter-1.jpg"
    
#     # Add an image at a specific (X,Y)
#     y_position = pdf.cursor
#     pdf.text "The image won't go below this line of text."
#     pdf.image "app/assets/images/Les-Porter-1.jpg", :at => [200, y_position]
#     pdf.text "And this line of text will go just below the previous one."
    
    # Create a bounding box
#     pdf.bounding_box([50, pdf.cursor], :width => 400, :height => 450) do
#       # Draw a stroke around the bounding box
#       pdf.stroke_bounds
      
#       # Add 3 images at the left, center, and right positions
#       [:left, :center, :right].each do |position|
#         pdf.text "Image aligned to the #{position}."
#         pdf.image "#{Prawn::DATADIR}/images/stef.jpg", :position => position
#       end
      
#       # Add an image 50 pixels from the left side of the bounding box
#       pdf.text "The next image has a 50 point offset from the left boundary"
#       pdf.image "#{Prawn::DATADIR}/images/stef.jpg", :position => 50
#     end
    
    # Produce the PDF
    # -------------------------------------------------------------------------
    
    pdf.render_file "public/pdfs/helloworld.pdf"
    
  end 
end