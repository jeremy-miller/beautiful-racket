#lang br
(require basic/parser basic/tokenizer brag/support)

(define str #<<HERE
10 print "hello" : print "world"
20 goto 9 + 10 + 11
30 end
HERE
)

(parse-to-datum (apply-tokenizer make-tokenizer str))