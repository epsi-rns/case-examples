(ns t09-pipe (:gen-class) (:use my-songs))

(defn extract
  [songs]
  (remove nil? (map #(get % :tags) songs))
)

(defn -main [& args]
  (->> (extract songs) 
       (flatten)
       (distinct)
       (println)))
