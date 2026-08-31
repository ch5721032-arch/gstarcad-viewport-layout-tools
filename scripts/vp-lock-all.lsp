;; vp-lock-all.lsp - Lock or unlock all viewports in every layout
;; Command: VPLockAll
;; Usage: APPLOAD -> VPLockAll -> choose L to lock or U to unlock
(defun c:VPLockAll ( / mode n l )
  (setq mode (strcase (getstring "\nLock all viewports? (L/U): ")))
  (setq n 0)
  (setq l (tblnext "LAYOUT" T))
  (while l
    (setvar "CTAB" (cdr (assoc 1 l)))
    (command "_.MSPACE")
    (setq vp (entnext))
    (while vp
      (if (= "VIEWPORT" (cdr (assoc 0 (entget vp))))
        (progn
          (if (= mode "L")
            (command "_.MVIEW" "_L" "_ON")
            (command "_.MVIEW" "_L" "_OFF")
          )
          (setq n (1+ n))
        )
      )
      (setq vp (entnext vp))
    )
    (command "_.PSPACE")
    (setq l (tblnext "LAYOUT"))
  )
  (princ (strcat "\nUpdated " (itoa n) " viewports."))
  (princ)
)
(princ "\nvp-lock-all.lsp loaded. Type VPLockAll to run.")
(princ)
