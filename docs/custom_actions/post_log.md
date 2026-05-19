# Custom Actions / postLog

Simple remote logging custom action for FlutterFlow.

Useful for:

- debugging API flows
- debugging authentication
- debugging custom actions
- debugging app state
- debugging device-only issues
- lightweight remote logging
- inspecting runtime values from physical devices

Compatible with FlutterFlow Custom Actions.

## Features

- Lightweight HTTP logging
- Simple plain text protocol
- FlutterFlow-friendly interface
- Minimal setup
- Useful for emulator and physical device debugging

## FlutterFlow Action Parameters

| Name    | Type   | Description        |
| ------- | ------ | ------------------ |
| url     | String | Logging server URL |
| message | String | Message to send    |

## Example Usage

```dart
await postLog(
  'http://192.168.1.10:9000/log',
  'login success',
);
```

## Example Use Cases

- Debug API responses
- Inspect tokens
- Debug authentication flows
- Debug conditional logic
- Debug app state
- Debug device-specific behavior
- Debug custom widget interactions

## Sample FastAPI Logging Server

Example lightweight server that captures logs from FlutterFlow.

### Install

```bash
pip install fastapi uvicorn
```

### justlog.py

```python
from fastapi import FastAPI, Request
from datetime import datetime
import uvicorn

app = FastAPI()

@app.get("/")
async def root():
    return {
        "message": "Logging server is running",
    }

@app.post("/log")
async def log(request: Request):

    body = (await request.body()).decode()

    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    print(f"[{timestamp}] : {body}")

    return {
        "success": True,
        "timestamp": timestamp,
    }

if __name__ == "__main__":
    uvicorn.run(
        "justlog:app",
        host="0.0.0.0",
        port=9000,
        reload=True,
    )
```

### Run Server

```bash
python justlog.py
```

### Example Output

```text
[2026-05-19 09:10:00] : login success
```

### Default Port

The sample server runs on port `9000` by default.

You can change it to any available local port if needed.

## Full Custom Action

```dart
// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future postLog(
  String url,
  String message,
) async {
  await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'text/plain',
    },
    body: message,
  );
}
```

## Notes

### Android Emulator

Use:

```text
http://10.0.2.2:9000/log
```

instead of:

```text
http://127.0.0.1:9000/log
```

### Physical Device

Use your computer local IP address:

```text
http://192.168.x.x:9000/log
```

### FastAPI Host

Make sure FastAPI runs with:

```python
host="0.0.0.0"
```

to allow external device access.
