# capacitor-dynamic-island

Allow for ionic ios app to create features for the dynamic island

## Install

```bash
npm install capacitor-dynamic-island
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`greet(...)`](#greet)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### greet(...)

```typescript
greet(options: { name?: string; }) => Promise<{ greeting: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ name?: string; }</code> |

**Returns:** <code>Promise&lt;{ greeting: string; }&gt;</code>

--------------------

</docgen-api>
