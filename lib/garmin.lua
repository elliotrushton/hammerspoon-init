local usbWatcher = nil

function copyFromDevice()
end

function usbDeviceCallback(data)
    -- Grab data off of Garmin Fenix 2
    if (data["productID"] == 0x27af and data["vendorID"] == 0x091e) then
        if (data["eventType"] == "added") then
            hs.alert.show("Garmin Added!")
            isInDropbox()
        elseif (data["eventType"] == "removed") then
            hs.alert.show("Garmin Removed!")
            isInDropbox()
        end
    end
end

function copyGarminActivities(files)
  for _,file in pairs(files) do
        -- if file not in dropbox already
        if isInDropbox(file) then
          -- copy file over

        end
  end
end

function isInDropbox()
  itrFn, dir = hs.fs.dir(os.getenv("HOME") .. "/Dropbox/Training/running/gps-files/")

  local file = itrFn(dir)
  while file ~= nil
  do
    hs.alert.show(file)
    
    file = itrFn(dir)
  end
  return false
end

--hs.pathwatcher.new("/Volumes/GARMIN/Garmin/Activity/", copyGarminActivities):start()


usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()
