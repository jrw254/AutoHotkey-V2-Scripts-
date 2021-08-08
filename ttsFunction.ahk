/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.1

Script Function:    Talk To Speech Function in v2
                    Find the SAPI on yor machine in v2

Example:            #z::
                      {
                      tts_Func()
                      }
                      
                      [::
                      {
	                      Find_SAPIs := ComObject("SAPI.SpVoice")
                          for output in Find_SAPIs.GetAudioOutputs(){
                          SAPI_Display := Format("output number {:d}, voice number {:d}", A_Index - 1)
                          Find_SAPIs.AudioOutput := output
                        for voice in Find_SAPIs.GetVoices(){
                          out := Format(SAPI_Display, A_Index - 1)
                          Find_SAPIs.Voice := voice ; locate SAPI voice
                          Find_SAPIs.Speak(out, 1) ; Speak text displayed on MsgBox
                      Msgbox out
    }
}
}

*/




tts_Func(*) {
        tts := ComObject("SAPI.SpVoice")
        tts.voice := tts.GetVoices().Item(1) ; set voice to param1 / Zira
            tts.Speak("Timer Up")
}


	Find_SAPIs := ComObject("SAPI.SpVoice")
for output in Find_SAPIs.GetAudioOutputs(){
    SAPI_Display := Format("output number {:d}, voice number {:d}", A_Index - 1)
    Find_SAPIs.AudioOutput := output
    for voice in Find_SAPIs.GetVoices(){
        out := Format(SAPI_Display, A_Index - 1)
        Find_SAPIs.Voice := voice ; locate SAPI voice
        Find_SAPIs.Speak(out, 1) ; Speak text displayed on MsgBox
        Msgbox out
    }
}
