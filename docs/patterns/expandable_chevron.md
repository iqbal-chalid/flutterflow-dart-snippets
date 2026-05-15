# ExpandableChevron

A reusable chevron toggle pattern with rotation animation for expand/collapse interactions in FlutterFlow.

---

## Component Parameters

| Parameter           | Type    | Default | Description                                                     |
| ------------------- | ------- | ------- | --------------------------------------------------------------- |
| `isExpanded`        | Boolean | `false` | Controls whether the chevron is in expanded or collapsed state. |
| `onTap`             | Action  | -       | Callback executed when the component is tapped.                 |
| `width`             | Double  | `50`    | Width of the tappable container.                                |
| `height`            | Double  | `50`    | Height of the tappable container.                               |
| `animationDuration` | Integer | `300`   | Rotation animation duration in milliseconds.                    |

---

## Component State

| State      | Type    | Default |
| ---------- | ------- | ------- |
| `duration` | Integer | `0`     |

---

## Component Structure

```text
Container
└── Stack
    └── Image (Centered)
```

---

## Animation

### Target

`Image`

### Trigger

`On Action Trigger`

### Animation Type

`Rotate`

### Configuration

#### Duration

```text
duration
```

#### Initial Turns

```text
if isExpanded:
    -0.5
else:
    0
```

#### End Turns

```text
if isExpanded:
    0
else:
    -0.5
```

---

## Actions

### On Page Load

1. Trigger widget animation:

   ```text
   Chevron
   ```

2. Update component state:
   ```text
   duration = animationDuration
   ```

---

### On Tap — Container

1. Execute callback:

   ```text
   onTap
   ```

2. Update component state:
   ```text
   duration = animationDuration
   ```

---

## Sample Usage

### Sample Page State

| State        | Type    | Default |
| ------------ | ------- | ------- |
| `isExpanded` | Boolean | `false` |

---

### ExpandableChevron Parameters

| Parameter           | Value               |
| ------------------- | ------------------- |
| `isExpanded`        | `isExpanded`        |
| `onTap`             | Toggle `isExpanded` |
| `width`             | Default (`50`)      |
| `height`            | Default (`50`)      |
| `animationDuration` | Default (`300`)     |

---

### Example Flow

1. Initial page state:

   ```text
   isExpanded = false
   ```

2. User taps `ExpandableChevron`

3. `onTap` toggles page state:

   ```text
   isExpanded = !isExpanded
   ```

4. Chevron rotates based on updated `isExpanded` value
