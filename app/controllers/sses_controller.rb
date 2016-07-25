class SsesController < ApplicationController
  include ActionController::Live

  def index
  end

  def stream
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream, event: 'progress')
    100.times do |i|
      sse.write(i.to_s)
      sleep 1
    end
    sse.write('done')
  ensure
    sse.close
  end
end
