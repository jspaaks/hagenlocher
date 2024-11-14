# lists

Haskell tutorial by Philipp Hagenlocher

https://www.youtube.com/watch?v=dR_aUQXw5fs&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load lists.hs 
[1 of 1] Compiling Lists        ( Lists.hs, interpreted )
Ok, one module loaded.
```

## `myElem`

```haskell
λ myElem 3 [1..]
True
λ myElem 13 [1..10]
False
λ myElem 10 [1..10]
True
```

## `myNub`

```haskell
λ myNub [1,2,3,4,3,2]
[1,4,3,2]
λ 
```

## `myIsAsc`

```haskell
λ myIsAsc []
True
λ myIsAsc [1]
True
λ myIsAsc [1, 2]
True
λ myIsAsc [1, 2, 3]
True
λ myIsAsc [1, 2, 3, -1]
False
```

## `myHasPath`

```haskell
λ myHasPath [(1,2), (2,3), (3,2), (4,3), (4,5)] 4 2
True
λ myHasPath [(1,2), (2,3), (3,2), (4,3), (4,5)] 4 1
False
```
