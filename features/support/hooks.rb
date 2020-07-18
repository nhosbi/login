# frozen_string_literal: true



After do |_scenario|

  # if scenario.failed?

  temp_shot = page.save_screenshot('log/temp_shot.png')

  screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)

  embed(screenshot, 'image/png', 'Screenshot')

  # end

end

