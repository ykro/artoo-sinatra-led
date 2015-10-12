require 'artoo'

connection :arduino, :adaptor => :firmata, port: '/dev/cu.usbmodem1421'
device :led, :driver => :led, :pin => 13
api :host => '127.0.0.1', :port => '4321'
name 'myled'

work do 
	
end