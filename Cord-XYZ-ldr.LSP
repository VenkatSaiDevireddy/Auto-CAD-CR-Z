;cord-ldr.lsp
; x,y,z Coordinates on Leader Lines

(defun C:CR-Z (/ PNT1 P1X P1Y P1Z STDZ DZ PTXT )
    (setq PNT1 (getpoint "\nPick coordinate point: "))
    (setq P1X (car pnt1)) ;x coord
    (setq P1Y (cadr pnt1)) ;y coord
    (setq P1Z (caddr pnt1)) ;z coord
    (setq STDX (rtos P1X 2 3))
    (setq STDY (rtos P1Y 2 3))
    (setq STDZ (rtos P1Z 2 3));(setq COORD (strcat "E=" STDX "\nN=" STDY))
    (setq PTXT (getpoint "\nPick text location: "))
    (command "leader" PNT1 PTXT "" (strcat "E=" STDX)(strcat "N=" STDY)(strcat "Z=" STDZ) "")
    (princ)) ; end