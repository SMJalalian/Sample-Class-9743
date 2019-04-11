$input = $(
      Add-Type -AssemblyName Microsoft.VisualBasic
      [Microsoft.VisualBasic.Interaction]::InputBox('Enter your city','Titlebar Text', 'Default new york')
     )
$input