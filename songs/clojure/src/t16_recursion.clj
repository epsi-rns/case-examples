(ns t16-recursion
  (:gen-class)
  (:use my-songs)
  (:require [clojure.core.async
    :as async
    :refer [>! <! >!! <!! go chan close!]]))

(def tag-chan (chan))

(defn receiver
  ([] (receiver []))
  ([tags]
    (let [tag (<!! tag-chan)]
      (if (not= tag 0)
        (receiver (conj tags tag))
        (println tags))
    )))

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
