## Module AWS.MigrationHub

<p>The AWS Migration Hub API methods help to obtain server and application migration status and integrate your resource-specific migration tool by providing a programmatic interface to Migration Hub. </p>

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


