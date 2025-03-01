# frozen_string_literal: true

module VIVINO
  # wrapper methods for custom / dynamic devices
  # both local and browserstack configuration

  def browserstack_device(name, version)
    caps = {}
    caps['build'] = 'Vivino'
    caps['os_version'] = version
    caps['app'] = ENV['VIVINO_BS_APP']
    caps['name'] = 'Tech Assessment'
    caps['project'] = 'Android Test'
    caps['device'] = name
    caps['platformName'] = ENV['PLATFORM']
    caps
  end

  def local_device(name)
    caps = {caps: {}}
    caps[:caps][:platformName] = 'Android'
    caps[:caps][:automationName] = 'UiAutomator2'
    caps[:caps][:deviceName] = 'Mi A3'
    caps[:caps][:app] = './app/app-world-beta.apk'
    caps[:caps][:noReset] = 'false'
    caps[:caps][:systemPort] = '4723'
    caps[:caps][:appWaitActivity] = '*'
    caps[:caps][:appPackage] = 'vivino.web.app.beta'
    caps[:caps][:appActivity] = 'com.sphinx_solution.activities.SplashActivity'

  end
end
