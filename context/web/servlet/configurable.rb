class Configureable < Simple
  def initialize server, color, size
    super server
    @color = color
    @size = size
  end

  def do_stuff_with request
    content = "<p  %q{style=\"color: #{@color}; font-size: #{@size}\"}\">Hello, World!"

    return 200, "text/html", content
  end
  
  def do_stuff_with request
     content = "<p  %q{style=\"color: #{@color}; font-size: #{@size}\"}\">Hello, World!"
 
     return 200, "text/html", content
   end
   
   
end