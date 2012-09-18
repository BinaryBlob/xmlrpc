# encoding: utf-8

require "xmlrpc/server"

class Bugzilla
  def time
    puts "#time"
    Time.now
  end

  def login(opts)
    puts "#login"
    {id: 120}
  end
end

server = XMLRPC::Server.new 5001, 'localhost'
server.add_handler "bugzilla", Bugzilla.new
server.serve
