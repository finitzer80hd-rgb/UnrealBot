# UnrealBot

Windows desktop coding assistant for Unreal Engine 5.x. Supports LM Studio local models (recommended) and OpenAI API.

## Features
- Reads Unreal project source/config text files.
- Proposes code changes for review; backs up existing files before applying approved changes.
- Builds the Unreal Editor target and captures compiler output for AI diagnosis.
- Supports local LM Studio via its OpenAI-compatible API. No OpenAI API key is needed in local mode.

## Requirements
- Windows 10/11 and Python 3.10+
- Unreal Engine and Visual Studio C++ workload
- LM Studio with a model downloaded and loaded (recommended), or an OpenAI API key if using OpenAI mode

## LM Studio setup
1. Open LM Studio and download/load your Qwen coding model.
2. Open the Developer tab and start the local server.
3. The default base URL is `http://localhost:1234/v1`.

## Run UnrealBot
1. Download/clone the repository.
2. Double-click `launch.bat` or run `python unrealbot.py`.
3. Click **Choose .uproject** and select your project.
4. Open **Settings** and enter `lmstudio` for provider. Keep the base URL as `http://localhost:1234/v1`. Leave model ID blank to auto-detect the first model served by LM Studio, or enter the exact model ID from its `/v1/models` endpoint.
5. Enter your task and click **Ask AI**. Review the proposed changes before using **Apply approved changes**.
6. Use **Build Editor** to compile and **Ask AI to Diagnose Build** after a failed build.

## Optional OpenAI mode
In Settings, select provider `openai`, then enter an API key and model. API usage is billed separately from ChatGPT. Never commit keys to GitHub.

## Important
- Keep source control or a separate backup and review proposed edits before applying them.
- Local mode sends project context to the local LM Studio server. OpenAI mode sends it to OpenAI.
- AI changes are not guaranteed correct, and a successful build does not prove gameplay behavior works.
- Unreal Editor scripting is separate; see [Epic's UE 5.8 Python editor scripting documentation](https://dev.epicgames.com/documentation/en-us/unreal-engine/scripting-the-unreal-editor-using-python).
