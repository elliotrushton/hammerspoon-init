-- -------------------- Config Reload --------------------
--
-- Reload the hammerspoon config if the hotkeys of
-- alt-shift-h get triggered.

function reloadAndTell()
  hs.reload()
  hs.notify.new({ title = "Hammerspoon", informativeText = "Config reloaded!"}):send()
end

hs.hotkey.bind({"alt", "shift"}, "h", reloadAndTell)

