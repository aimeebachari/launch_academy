SENTENCE_FRAGMENTS = [
  "I am a poor boy",
  "I like big butts",
  "Why are we so blind to see",
  "I feel a poke coming through",
  "We are the champions, my friends"
]

def sample_of_sentence_fragments(number)
  number.times do
    puts SENTENCE_FRAGMENTS.sample
  end
end

def get_reaction
  puts "How do you feel about the comments above?"
  reaction = gets.chomp

  puts "Nobody cares about your #{reaction}"
end

def reverse_sentence_fragments(number)
  number.times { SENTENCE_FRAGMENTS.each { |fragment| puts fragment.reverse } }
end

def say_things(number)
  sample_of_sentence_fragments(number)
  get_reaction
  reverse_sentence_fragments(number)
end

say_things(3)
