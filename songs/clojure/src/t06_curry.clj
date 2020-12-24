(ns t06-curry (:gen-class) (:use my-songs))

(defn extract
  [songs]
  (remove nil? (map #(get % :tags) songs))
)

(defn -main [& args]
    (doseq [tags (extract songs)]
      (println tags))
  )

