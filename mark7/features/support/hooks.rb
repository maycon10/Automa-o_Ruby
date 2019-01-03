
After('@logout') do
    click_link @email
    click_link 'Sair'
end

After do |scenario|
    nome_scenario = scenario.name.gsub(' ','_').downcase!
    puts nome_scenario
    screenshot = "log/screenshots/#{nome_scenario}_#{Time.now.strftime('%d-%m-%Y_%H-%M-%S')}.png"

    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia do teste!!!')
end 

Before do
    page.driver.browser.manage.window.maximize
  end 