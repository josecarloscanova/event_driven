require 'wmi-lite'


puts "Ruby processes:\n"
wmi = WmiLite::Wmi.new
processes = wmi.query('select * from Win32_Process')
puts "\n#{'Process Id'.ljust(10)} Name"
puts "#{'----------'.ljust(10)} ----\n"
processes.each do | process |
  pid = process['processid']
  name = process['name']
  puts "#{pid.to_s.ljust(10)} #{name}"
end
puts