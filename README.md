# Corpus

Produce lines of text based on a corpus of text.

## Running it

```bash
# convert Markdown to plain text, append to corpus.txt
./run.sh ~/0xadada/0xadada.github.io/_posts > corpus.txt
# convert Twitter archive to plain text, append to corpus.txt
./tweets.sh archive.js >> corpus.txt
```

## For fun

```bash
# pick a random line
head -$((${RANDOM} % `wc -l < corpus.txt` + 1)) corpus.txt | tail -1
```