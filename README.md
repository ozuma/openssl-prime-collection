# Abstract

One day I thought:
"If I create many primes (about 2 or 3 million), I might hit an exact prime of the SSL Certificate."

Here are an experimental scripts set.

1. At first, you need to generate many primes.
```
$ ./print_2prime.sh > primes.txt
```

2. Crawl SSL Certificates. This script extract Modulous of SSL Certificate.
```
$ ./download_modulus.sh < https.lst > https-modulus-list.txt

```
Edit a file "https.lst" as you like.

3. Now Let's brute-force.

```
./solve_modulus.rb https-modulus-list.txt prime.txt
```

