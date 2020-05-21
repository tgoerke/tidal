-- TC Electronic Ditto X4 Looper -- MIDI channel 4 by factory settings
-- NOTE: channel 4 is number 3 in tidal because we start counting with 0
let ditto = s "midi" # midichan 3

l1go = ccn "3" # ccv "1" # ditto          -- CC3 Looper 1 Rec/Dub/Start
l1stop = ccn "9" # ccv "1" # ditto        -- CC9 Looper 1 Stop
l1clear = ccn "14" # ccv "1" # ditto      -- CC14 Looper 1 Clear
let l1level l = ccn "15" # ccv l # ditto  -- CC15 Looper 1 Level
l1store = ccn "20" # ccv "1" # ditto      -- CC20 Looper 1 Hold to Store
l1delete = ccn "21" # ccv "1" # ditto     -- CC21 Looper 1 Clear Backtrack
l2go = ccn "22" # ccv "1" # ditto         -- CC22 Looper 1 Rec/Dub/Start
l2stop = ccn "23" # ccv "1" # ditto       -- CC23 Looper 1 Stop
l2clear = ccn "24" # ccv "1" # ditto      -- CC24 Looper 1 Clear
let l2level l = ccn "25" # ccv l # ditto  -- CC25 Looper 1 Level2store = ccn "29" # ccv "1" # ditto      -- CC26 Looper 1 Hold to Store
l2delete = ccn "30" # ccv "1" # ditto     -- CC30 Looper 1 Clear Backtrack
let ldecay l = ccn "28" # ccv l # ditto     -- CC28 Decay “Level”
--lfx = ccn "31" # ccv "1" # ditto          -- CC31 FX On/Off     
lsyncserial = 85                          -- CC85 Parallel/Serial Toggle
-- panic, wipe or hush Ditto
lpanic = ccn "29" # ccv "1" # ditto       -- CC29 PANIC All Loops Stop
lwipe = ccn "30" # ccv "1" # ditto        -- CC30 WIPE All Loops Clear
let lhush = mapM_ ($ silence # ditto) [d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16]

-- Set Ditto FX selector (0 reverse  1 half   2 once   3 tape  4 fade  5 double  6 hold)
-- and toggle the FX switch. Use like this:
--    once $ lfx lreverse
-- OR
--    d9 $ slow 4 $ lfx lreverse
--    d9 $ silence
let lfx num = progNum num # midicmd "program" # ccn 31 # ccv 1 # ditto

lreverse = 0
lhalf = 1
lonce = 2
ltape = 3
lfade = 4
ldouble = 5
lhold = 6

 
