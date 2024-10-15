local gentleGC = CreateFrame("FRAME")

local gc_count = 1

-- ggc_debug = true

gentleGC:SetScript("OnUpdate", function ()
  this.elapsed = (this.elapsed or 0) + arg1
  if this.elapsed > 180 then
    local x,d1 = gcinfo(),GetTime()
    -- print("gc "..gc_count.." "..x/1024.."mb / "..y/1024.."mb")
    collectgarbage()
    local y,d2 = gcinfo(),GetTime()
    if ggc_debug then
      print(format("%d sec gc %d, was %.1fmb, is %.1fmb, saved %.1fmb, took %.2fs",180,gc_count,x/1024,y/1024,(x-y)/1024, d2 - d1))
    end

    gc_count = gc_count + 1
    this.elapsed = 0
  end
end)
