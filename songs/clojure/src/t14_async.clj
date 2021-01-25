(ns t14-async
  (:gen-class)
  (:use my-songs)
  (:require [clojure.core.async :as async]))

(def tag-chan (async/chan))

(defn receiver []
  (while true
    (async/take! tag-chan println))
)

(async/go (receiver))

(defn sender []
  (doseq [song songs]
    (if (not (nil? (:tags song)))
      (doseq [tag (:tags song)]
        (async/put! tag-chan tag)
  ))))

(defn -main [& args] (sender))
