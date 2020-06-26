<!-- AJ_Tools_UT_getInfo ( ) -> version -->


## Description

Show the version info of the component.


```4d
  AJ_Tools_UT_getInfo ( ) -> version
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| version | text | out | version info of the component |

## Example

```4d
  C_String($version)

  $version:= AJ_Tools_UT_getInfo () //AJ_Tools_UT: 2.0.1-Build30
```
