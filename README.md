# CAUTION

This script maybe wastes your time and computer resource...

# Abstract

One day I thought:
"If I create many primes (about 2 or 3 million), I might hit an exact prime of the SSL Certificate."

Here are an experimental scripts set. 

- At first, you need to generate many primes.

```
$ ./print_2prime.sh > primes.txt
```

- Then, crawl SSL Certificates. This script extracts only Modulous of SSL Certificate. Edit a file "https.lst" as you like.

```
$ ./download_modulus.sh < https.lst > https-modulus-list.txt
```

- Now Let's brute-force.

```
./solve_modulus.rb https-modulus-list.txt prime.txt
```

