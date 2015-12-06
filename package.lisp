;;; Copyright (C) 2001, 2003  Eric Marsden
;;; Copyright (C) 2005  David Lichteblau
;;; "the conditions and ENSURE-SSL-FUNCALL are by Jochen Schmidt."
;;;
;;; See LICENSE for details.

#+xcvb (module (:depends-on ((:when (:featurep :sbcl) (:require :sb-posix)))))

(in-package :cl-user)

(defpackage :cl+ssl
  (:use :common-lisp :trivial-gray-streams)
  (:export #:*default-cipher-list*
           #:ensure-initialized
           #:reload
           #:stream-fd
           #:make-ssl-client-stream
           #:make-ssl-server-stream
           #:use-certificate-chain-file
           #:random-bytes
           #:ssl-check-verify-p
           #:ssl-load-global-verify-locations
           #:ssl-set-global-default-verify-paths
           #:ssl-error-verify
           #:ssl-error-stream
           #:ssl-error-code

           #:+ssl-verify-none+
           #:+ssl-verify-peer+
           #:+ssl-verify-fail-if-no-peer-cert+
           #:+ssl-verify-client-once+

           #:+ssl-op-no-sslv2+
           #:+ssl-op-no-sslv3+
           #:+ssl-op-no-tlsv1+
           #:+ssl-op-no-tlsv1-1+
           #:+ssl-op-no-tlsv1-2+
           
           #:make-context
           #:with-global-context))
