Gentle Garbage Collection
---
Automatically clear garbage without allocating more space, which causes long pauses for some players.  

Garbage collection pauses are caused by having a lot of garbage to check and by needing to allocate space when there's too much garbag. This addon attemps to avoid the latter by clearing garbage before the game decides to allocate more space for it.  
The best way to avoid the former is to turn off weighty addons you don't use often, pfquest for instance can use 100mb of addon memory while doing nothing at all.  

This addon runs once ever 3 minutes, type `/run ggc_debug = 1` in game to see a report each time it runs.  
