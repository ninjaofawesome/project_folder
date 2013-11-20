# Organizing Nested Data

# I have a collection of Programming Languages.  
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }

#   }
# }

language_party = {}
  #creates a new hash
  languages.each do |key, value|
    #goes over each language key (:oo) and puts all the key/value pairs into one big value
    value.each do |:new_key, new_value|
      #goes over each thing in the value and makes a new_key and new_value
      new_value.each do |extra_descriptor|
        if new_value[extra_descriptor].nil?
          new_value[extra_descriptor] = {}
        end
          #the above statement says "if the extra_descriptior is empty, make a new hash"
           if new_value == :type
            new_value[:style] = language
           end
      end
  end
end

# I would like you to reformat the nested structure to be of the following form
# {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :t
# ype => "interpreted"
#   }
#   etc etc
# }