(asdf:defsystem bodge-glfw
  :description "Wrapper over glfw3 library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi claw)
  :serial t
  :components ((:file "packages")
               (:file "libglfw")
               (:static-file "bodge_glfw.h")
               (:file "claw")
               (:file "glfw")
               (:module spec)))


(asdf:defsystem bodge-glfw/example
  :description "bodge-glfw example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (glfw-blob bodge-glfw claw cl-opengl)
  :components ((:file "example")))
