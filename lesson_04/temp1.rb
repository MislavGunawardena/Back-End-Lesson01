munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_ages_of_males = munsters.inject(0) do |male_age_total, pair|
                        if pair[1]['gender'] == 'male'
                          male_age_total += pair[1]['age']
                        end
                        male_age_total
                      end
puts total_ages_of_males