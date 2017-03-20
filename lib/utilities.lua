-- -------------------- Utility Functions --------------------

function notify(title, text)
  hs.notify.new({ title = title, informativeText = text}):send()
end
