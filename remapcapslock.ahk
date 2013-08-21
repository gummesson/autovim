;------------------
;  Remap Capslock
;------------------

; Default editor and replacement key
Editor := "VIM"
RepKey := "Esc"

; Use the window title as an identifier
SetTitleMatchMode, 2

Capslock::
{

  ; Send the replacement key if the editor is active
  IfWinActive, %Editor%
  {
    Send {%RepKey%}
  }

  ; Exit the thread
  exit

}
