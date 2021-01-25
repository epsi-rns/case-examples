(ns t13-songs-unique (:gen-class) (:use my-songs))

(defn get-tags [songs]
  (def tags (atom []))
  (doseq [song songs]
    (if (not (nil? (:tags song)))
      (doseq [tag (:tags song)]
        (swap! tags conj tag))))
  (deref tags))

(defn exclude [value items]
  (filter #(not= value %) items))

(defn unique [items]
  (if (<= (count items) 1)
    items
    (let [[head & tail] items]
      (concat [head] (unique
        (exclude head tail))))
  ))

(defn -main [& args]
  (->> songs
       (get-tags)
       (unique)
       (println)
  ))
