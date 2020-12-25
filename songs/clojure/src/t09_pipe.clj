(ns t09-pipe (:gen-class) (:use my-songs))

(defn extract
  [songs]
  (remove nil? (map #(get % :tags) songs))
)

(defn -main [& args]
  (->> songs
       (extract) 
       (flatten)
       (distinct)
       (println)))
