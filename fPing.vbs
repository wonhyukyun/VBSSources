'source from https://www.codeproject.com/Questions/169276/Vbscript-to-ping-a-list-of-computers

function fPing( strComputer )
        dim objShell,objPing
        dim strPingOut, flag
        set objShell = CreateObject("Wscript.Shell")
        set objPing = objShell.Exec("ping " & strComputer)
    strPingOut = objPing.StdOut.ReadAll
    if instr(LCase(strPingOut), "reply") then
        flag = TRUE
        else
                flag = FALSE
        end if
        fPingTest = flag

end function
