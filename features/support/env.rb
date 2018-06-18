require "appium_lib"
Before do
  $driver.start_driver
end


After do
  $driver.driver_quit
end

def capabil
  { caps: {
      deviceName: "LG",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "com.united.mobile.apk")),
      appPackage: "com.united.mobile.android",
      appActivity: "com.united.mobile.android.Main",
      newCommandTimeout: "3600"
  }}
end
Appium::Driver.new(capabil, true)
Appium.promote_appium_methods Object










