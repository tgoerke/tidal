-- MIDI channels for my hardware synths
let white = s "midi" # midichan 1
let black = s "midi" # midichan 2

-- Shorthand to send MIDI cc  --e.g. d9 $ cc cutoff 100 # black
let cc n v = ccn n # ccv v

-- MIDI CC defs
let osc1Shape = 20
let osc1Param = 21
let osc1Range = 22
let subOscShape = 23
let osc2Shape = 24
let osc2Param = 25
let osc2Range = 26
let osc2Detune = 27
let oscModOp = 28
let oscBalance = 29
let subOscVol = 30
let noiseVol = 31
let resonance = 71
let cutoff = 74 
let vcfEnvAmount = 102
let vcfLFOAmount = 103
let env1A = 104
let env1D = 105
let env1S = 106
let env1R = 107
let env2A = 108
let env2D = 109
let env2S = 110
let env2R = 111
let lfo1waveform = 112
let lfo1rate = 113
let lfo1risetime = 114
let lfo1master = 115
let lfo2waveform = 116
let lfo2rate = 117
let lfo2risetime = 118
let lfo2master = 119
let seqMode = 75 
let seqGroove = 76
let seqAmount = 77
let arpDirection = 78
let arpRange = 79
let arpPattern = 80

-- select program to process audio in (depends on preset settings)
let bubbleIn = progNum 124 # midicmd "program" # black
let tremoIn = progNum 125 # midicmd "program" # black
let bleepIn = progNum 126 # midicmd "program" # black
let noodleIn = progNum 127 # midicmd "program" # black
