(ns t03-songs (:gen-class))

(defrecord Song [title tags])
(def songs [
    (map->Song {
      :title "Cantaloupe Island"
      :tags ["60s" "jazz"] })
    (map->Song {
      :title "Let It Be"
      :tags ["60s" "rock"] })
    (map->Song {
      :title "Knockin' on Heaven's Door"
      :tags ["70s" "rock"] })
    (map->Song {
      :title "Emotion"
      :tags ["70s" "pop"] })
    (map->Song {
      :title "The River" })
  ])

(defn -main [& args]
    (doseq [song songs] (println song))
  )

