KEYS = Dict('1' => [ ".", ",", "!", "?", " "],
            '2' => [ "a", "b", "c"],
            '3' => [ "d", "e", "f"],
            '4' => [ "g", "h", "i"],
            '5' => [ "j", "k", "l"],
            '6' => [ "m", "n", "o"],
            '7' => [ "p", "q", "r", "s"],
            '8' => [ "t", "u", "v"],
            '9' => [ "w", "x", "y", "z"])

function word(message)
    key = message[1]
    cnt = count(isequal(key), message)
    i = rem(cnt, length(KEYS[key]))
    KEYS[key][i == 0 ? length(KEYS[key]) : i]
end

keitaimessage(message) = word.(split(message, "0", keepempty=false)) |> join

@show keitaimessage("440330555055506660")
