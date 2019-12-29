;; speed up on windows
;; needed for org-bullets
;; https://github.com/sabof/org-bullets/issues/11
(setq inhibit-compacting-font-caches t)

;; no files starting with .#
(setq create-lockfiles nil)

;; set start of week to monday (not sunday)
(setq-default calendar-week-start-day 1)

;; no backup
(setq-default backup-inhibited t)

;; middle-clicking pastes at the current location instead of moving it
(setq mouse-yank-at-point t)
