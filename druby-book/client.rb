require 'drb/drb'

there = DRbObject.new_with_uri('druby://localhost:12345')
# there = DRbObject.new_with_uri('druby://192.168.128.102:12345')
there.puts('Hellooooooooooo Woooooold!!!!!!')
