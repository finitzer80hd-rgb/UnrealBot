# UnrealBot

A Windows desktop coding assistant for Unreal Engine 5.x projects and Visual Studio C++ workflows.

## What it does
- Select an Unreal `.uproject` file and inspect source/config files.
- Ask an AI coding assistant to propose complete-file changes using the OpenAI API.
- Review proposed changes before applying them; originals are backed up under `.unrealbot_backups/`.
- Build an Unreal Editor target using the project's local Unreal Build Tool `Build.bat`.
- Capture build output and ask the assistant to diagnose compiler errors.
- Open the project folder or solution in Windows Explorer / Visual Studio.

> This is an initial MVP. It does not silently control mouse/keyboard, edit binary assets, or guarantee gameplay correctness. Keep source control or a separate backup. Review all changes before applying.

## Requirements
- Windows 10/11
- Python 3.10+ (Tkinter included with standard Windows Python installer)
- Unreal Engine installed locally
- OpenAI API key for AI features (API billing is separate from ChatGPT)
- Visual Studio / Visual Studio Build Tools with the C++ workload for Unreal builds

## Run
1. Download/clone this repository.
2. Double-click `launch.bat` or run `python unrealbot.py`.
3. Click **Choose .uproject** and select your game project.
4. Open **Settings** to add your OpenAI API key, or set `OPENAI_API_KEY` in your environment.
5. Enter a task, then click **Ask AI**. Review the proposal and click **Apply approved changes** only when ready.
6. Click **Build Editor** to compile. Build output is shown in the log panel.

## Notes
- Unreal Editor Python automation is a separate optional integration. To enable it, turn on **Python Editor Script Plugin** and **Editor Scripting Utilities** in the Unreal project's Plugins settings, then restart the editor. See [Epic's UE 5.8 editor scripting documentation](https://dev.epicgames.com/documentation/en-us/unreal-engine/scripting-the-unreal-editor-using-python).
- AI context is limited to text files and capped to avoid sending huge projects. Do not send secrets or proprietary source to an external API unless you are comfortable doing so.
- Build target defaults to `<ProjectName>Editor`. If your project uses a custom target, update it in the app's Build settings.
- No API key is stored in the repository. Set it through the app or the `OPENAI_API_KEY` environment variable.
