;--------------
;  LiveReload
;--------------

; Add these mappings in your .(g)vimrc file:
; nnoremap <C-s> :update<cr>
; inoremap <C-s> <C-o>:update<cr>

; Default editor and web browser
Editor  := "VIM"
Browser := "Google Chrome"

; Use the window title as an identifier
SetTitleMatchMode, 2

; Ctrl+S
^s::
{

  ; Check if the text editor is active
  IfWinActive, %Editor%
  {

    ; Save the file
    Send ^s

    ; Check if the web browser is open
    IfWinExist, %Browser%
    {
      ; Make the web browser active and refresh it
      WinActivate
      Send {Browser_Refresh}
    }

    ; Go back to the editor
    WinActivate, %Editor%
  }

  ; Just save the file if the editor isn't active
  else
  {
    Send ^s
  }

  ; Exit the thread
  exit

}
