function paws --wraps='ssh -o LogLevel=Error tlambert@setonix.pawsey.org.au' --description 'alias paws=ssh -o LogLevel=Error tlambert@setonix.pawsey.org.au'
    ssh -o LogLevel=Error tlambert@setonix.pawsey.org.au $argv
end
