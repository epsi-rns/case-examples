(ns t05-extract (:gen-class) (:use my-songs))

(def extract (map #(get % :tags) songs))

(defn -main [& args]
    (doseq [tags extract] (println tags))
  )

