#lang br
(require jsonic/parser jsonic/tokenizer brag/support)

(parse-to-datum (apply-tokenizer-maker make-tokenizer "// line commment\n"))

(parse-to-datum (apply-tokenizer-maker make-tokenizer "@$ 42 $@"))

(parse-to-datum (apply-tokenizer-maker make-tokenizer "hi"))

(parse-to-datum (apply-tokenizer-maker make-tokenizer "hi\n// comment\n@$ 42 $@"))

(parse-to-datum (apply-tokenizer-maker make-tokenizer #<<JEREMY
"foo"
// comment
@$ 42 $@
JEREMY
))
