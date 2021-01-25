(ns t10-flatten (:gen-class) (:use my-songs))

(defn get-tags [songs]
  (def tags (atom []))
  (doseq [song songs]
    (if (not (nil? (:tags song)))
      (doseq [tag (:tags song)]
        (swap! tags conj tag))))
  (deref tags))

(defn -main [& args]
  (println (get-tags songs)))
