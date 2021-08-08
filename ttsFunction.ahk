/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    Talk To Speech Function in v2

Example:            #z::
                      {
                      tts_Func()
                      }

*/




tts_Func(*) {
        tts := ComObject("SAPI.SpVoice")
        tts.voice := tts.GetVoices().Item(1) ; set voice to param1 / Zira
            tts.Speak("Timer Up")
}
