Then('veo el mensaje {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end