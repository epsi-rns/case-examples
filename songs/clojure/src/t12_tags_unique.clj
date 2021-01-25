(ns t12-tags-unique (:gen-class))
(def tags ["rock" "jazz" "rock" "pop" "pop"])

(defn exclude [value items]
  (filter #(not= value %) items))

(defn unique [items]
  (if (<= (count items) 1)
    items
    (let [[head & tail] items]
      (concat [head] (unique
        (exclude head tail))))
  ))

(defn -main [& args] (
  println (unique tags)
))

