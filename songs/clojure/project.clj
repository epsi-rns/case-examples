(defproject noob "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.1"]
                 [org.clojure/core.async "1.3.610"]]
  :plugins [[lein-exec "0.3.7"]]
  :main noob.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all
                       :jvm-opts ["-Dclojure.compiler.direct-linking=true"]}
             :hola  {:main hola}
             :aloha {:main aloha}
             :t01-tags         {:main t01-tags}
             :t02-record       {:main t02-record}
             :t03-songs        {:main t03-songs}
             :t04-module       {:main t04-module}
             :t05-extract      {:main t05-extract}
             :t06-function     {:main t06-function}
             :t07-flatten      {:main t07-flatten}
             :t08-unique       {:main t08-unique}
             :t09-pipe         {:main t09-pipe}
             :t10-flatten      {:main t10-flatten}
             :t11-tags-exclude {:main t11-tags-exclude}
             :t12-tags-unique  {:main t12-tags-unique}
             :t13-recursion    {:main t13-recursion}
             :t13-songs-unique {:main t13-songs-unique}
             :t14-async        {:main t14-async}
             :t15-loop         {:main t15-loop}
             :t16-recursion    {:main t16-recursion}
            }
  :aliases {"alohascript" ["exec" "scripts/aloha.clj"]
            "hola"  ["with-profile" "hola"  "run"]
            "aloha" ["with-profile" "aloha" "run"]
           }
  )
