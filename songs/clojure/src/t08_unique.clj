(ns t08-unique (:gen-class) (:use my-songs))

(defn extract
  [songs]
  (remove nil? (map #(get % :tags) songs))
)

(defn -main [& args]
    (println (distinct (flatten
       (extract songs)
    )))
  )
