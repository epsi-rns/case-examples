(ns t07-flatten (:gen-class) (:use my-songs))

(defn extract
  [songs]
  (remove nil? (map #(get % :tags) songs))
)

(defn -main [& args]
    (println (flatten (extract songs)))
  )
