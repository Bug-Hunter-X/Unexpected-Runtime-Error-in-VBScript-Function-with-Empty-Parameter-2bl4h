Function MyFunc(param)
  On Error Resume Next
  If IsEmpty(param) Then
    Err.Clear
    MyFunc = "Default Value" ' or handle the empty parameter appropriately
  Else
    ' ... rest of the function
    MyFunc = param * 2 ' example operation
  End If
  On Error GoTo 0
End Function

' Test the function
MsgBox MyFunc(10)
MsgBox MyFunc("")
MsgBox MyFunc(Null)