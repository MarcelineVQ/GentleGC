local gentleGC = CreateFrame("FRAME")

local gc_count = 0

gentleGC:SetScript("OnUpdate", function ()
  this.elapsed = (this.elapsed or 0) + arg1
  if this.elapsed > 120 then
    gc_count = gc_count + 1
    local x = gcinfo()
    -- print("gc "..gc_count.." "..x/1024.."mb / "..y/1024.."mb")
    collectgarbage()
    local y = gcinfo()
    if ggc_debug then
      print(format("gc %d, was %.1fmb, is %.1fmb, saved %.1fmb",gc_count,x/1024,y/1024,(x-y)/1024))
    end

    this.elapsed = 0
  end
end)
