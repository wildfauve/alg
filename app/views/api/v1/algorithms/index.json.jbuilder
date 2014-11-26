json.kind "alogorithms"
json.algorithms @algs do |alg|
  json.name alg.name
  json.desc alg.desc
  json._links do
    json.self do
      json.href api_v1_algorithm_url(alg)
    end
    json.alg_workers do
      json.href api_v1_algorithm_workers_url(alg)
    end
  end
end