(ns t13-recursion (:gen-class))

(defn collect-random
  ([]
    (collect-random []))
  ([numbers]
    (if (<= (count numbers) 10)
      (collect-random (conj numbers (rand-int 100)))
      (println numbers)
    )
  ))

(defn -main [& args] (collect-random))
