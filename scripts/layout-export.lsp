;; layout-export.lsp - Print every layout to PDF
;; Command: LayoutExport
;; Usage: APPLOAD -> LayoutExport -> all layouts print to PDF one by one
(defun c:LayoutExport ( / l )
  (setvar "FILEDIA" 0)
  (setq l (tblnext "LAYOUT" T))
  (while l
    (setvar "CTAB" (cdr (assoc 1 l)))
    (command "_.PLOT" "_Y" "" "_PDF" "" "" "" "" "" "_Y")
    (setq l (tblnext "LAYOUT"))
  )
  (setvar "FILEDIA" 1)
  (princ "\nAll layouts sent to PDF.")
  (princ)
)
(princ "\nlayout-export.lsp loaded. Type LayoutExport to run.")
(princ)
