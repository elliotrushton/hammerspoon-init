-- -------------------- Net Status --------------------
-- The wifi at my house SUCKS and drops. I should get
-- a new router. But I haven't. Also it sucks at my
-- in-laws house and that is not a battle a I want to
-- get involved in. So this module adds a status to
-- the menu bar that shows if 8.8.8.8 is reachable via
-- ping.

NetMenu = hs.menubar.new()
NetMenu:setTitle("?")

function netDown()
    -- Skull & crossbones
    NetMenu:setTitle(hs.utf8.codepointToUTF8("U+2620"))
end

function netUp()
  -- Smiley
  NetMenu:setTitle(hs.utf8.codepointToUTF8("U+263A"))
end

hs.network.reachability.internet():setCallback(function(self, flags)
  if (flags & hs.network.reachability.flags.reachable) > 0 then
    -- a default route exists, so an active internet connection is present
    netUp()
  else
    -- no default route exists, so no active internet connection is present
    netDown()
  end
end):start()

-- Check on config reload
if (hs.network.reachability.internet():status() > 0) then
  netUp()
else
  netDown()
end

-- Monitor for changes
hs.network.reachability.internet():setCallback(setMenu):start()
