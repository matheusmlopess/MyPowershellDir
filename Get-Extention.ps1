if (test-path $path_ -PathType Leaf){
            Split-Path -Path "C:\Users\macedo.matheus\Desktop\PSscripts\*.ps1" -Leaf -Resolve
            Get-ChildItem -Path "C:\Users\macedo.matheus\Desktop\PSscripts\*.*" | select BaseName, Extension
        