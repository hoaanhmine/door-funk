function onCreate()
   -- background shit

   makeLuaSprite('light','gamble/light',-900,-210)
   setScrollFactor('light', 0.3, 0.3)

   makeLuaSprite('table','gamble/table',-1000,-420)
   setScrollFactor('table', 0.9, 0.9)
   scaleObject('table',1.1,1.1)

   addLuaSprite('light',false);
   addLuaSprite('table',false);
end