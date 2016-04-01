### adblockr: Block ads created by the monetizr package

I was horrified to learn of the existence of the [monetizr package](http://varianceexplained.org/r/monetizr/), which adds advertisements to R functions:


```r
library(monetizr)

multiply_by_two <- function(x) {
  x * 2
}

multiply_by_two <- marketably(multiply_by_two,
                              "This is an awful, distracting ad")

multiply_by_two(10)
```

```
## This is an awful, distracting ad
```

```
## [1] 20
```

The adblockr package offers the `freely` adverb, which converts the `multiply_by_two` function back to give you an ad-free experience:


```r
library(adblockr)

multiply_by_two <- freely(multiply_by_two)

multiply_by_two(5)
```

```
## [1] 10
```

The package also includes the `block_all` function for removing all ads from a package. For example, once the next version of broom is monetized, you can block all ads in the package with:


```r
library(broom)

block_all("broom")
```
