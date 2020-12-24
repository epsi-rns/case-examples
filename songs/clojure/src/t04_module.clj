(ns t04-module (:gen-class) (:use my-songs))

(defn -main [& args]
    (doseq [song songs] (println song))
  )

