# This is our framework where we can reuse code for other applications
# This is the base of our methods
# monroe.rb

class Monroe
  def response(status, headers, body = '')
    body = yield if block_given?
    [status, headers, [body]]
  end

  def erb(filename, local = {})
    b = binding # binds all the variables (esp message) and passes them to result which has a message variable in the view template
    message = local[:message]   
    content = File.read("views/#{filename}.erb")
    ERB.new(content).result(b)
  end
end