(ns t11-tags-exclude (:gen-class))
(def tags ["rock" "jazz" "rock" "pop" "pop"])

(defn exclude [value items]
  (filter (fn [item] (not= value item)) items)
)

(defn -main [& args] (
  println (exclude "rock" tags)
))

