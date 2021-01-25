(ns t15-loop
  (:gen-class)
  (:use my-songs)
  (:require [clojure.core.async
    :as async
    :refer [>! <! >!! <!! go chan close!]]))

(def tag-chan (chan))

(defn receiver [] (do
  (def tags (atom []))
  (loop [tag (<!! tag-chan)]
    (when (not (= tag 0))
      (swap! tags conj tag)
      (recur (<!! tag-chan))
    ))
  (println @tags)
  (close! tag-chan)
))

(defn sender []
  (do
    (doseq [song songs]
      (if (not (nil? (:tags song)))
        (doseq [tag (:tags song)]
          (>!! tag-chan tag))))
    (>!! tag-chan 0)))

(defn -main [& args]
  (future (receiver))
  (sender)
  (shutdown-agents)
)

