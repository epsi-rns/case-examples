(ns t02-record (:gen-class))

(defrecord Song [title tags])
(def song (map->Song {
      :title "Cantaloupe Island" 
      :tags ["60s" "jazz"]
    })
  )

(defn -main [& args] (println song))

