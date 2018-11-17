class Application

  def call(env)
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp = Rack::Response.new

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
