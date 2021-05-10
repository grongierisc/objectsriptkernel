Include %sySystem

Class JupyterKernel.CodeExecutor
{

ClassMethod CodeResult(vstrCommand As %String) As %String [ ProcedureBlock = 0 ]
{
        set tOldIORedirected = ##class(%Device).ReDirectIO()
        set tOldMnemonic = ##class(%Device).GetMnemonicRoutine()
        set tOldIO = $io
        try {
            set str=""
            set status = 1
            //Redirect IO to the current routine - makes use of the labels defined below
            use $io::("^"_$ZNAME)

            //Enable redirection
            do ##class(%Device).ReDirectIO(1)
            Set stdiomode   = ##class(%SYS.Python).SetStdIOMode(3)

            set sc = ##class(%SYS.Python).Run(vstrCommand)
            if sc = -1 {
                throw 
            }

        } catch {
            //do interpreter.showtraceback()
            set status = 0
        }

        //Return to original redirection/mnemonic routine settings
        if (tOldMnemonic '= "") {
            use tOldIO::("^"_tOldMnemonic)
        } else {
            use tOldIO
        }
        do ##class(%Device).ReDirectIO(tOldIORedirected)
        Do:stdiomode'="" ##class(%SYS.Python).SetStdIOMode(stdiomode)
        quit {"status":(status), "out":(str)}.%ToJSON()

rchr(c)
    quit
rstr(sz,to)
    quit
wchr(s)
    do output($char(s))
    quit
wff()
    do output($char(12))
    quit
wnl()
    do output($char(13,10))
    quit
wstr(s)
    do output(s)
    quit
wtab(s)
    do output($char(9))
    quit
output(s)
    set str = str _ s
    quit
}

/// Description
ClassMethod Run() As %Status
{
    Set sc = $$$OK
    // do something
    Return sc
}

}
