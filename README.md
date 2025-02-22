# OpenURLHandler

**OpenURLHandler** is an AppleScript-based custom URL handler for macOS that allows you to open files using a custom URL scheme (`open://`). Now, you can simply copy a file path and—using a Raycast snippet (triggered by `!of`)—generate a URL that automatically launches the given file.

---

# Why?

Deep linking files has long been a pet peeve of mine. I was sick of manually opening files from my Reminder app and other places, and solutions I found that cost money weren’t an option. **OpenURLHandler** offers a free, open-source solution that lets you seamlessly open any file via a custom URL scheme.

---

> Before you look at install options, if you're concerned about security (which in our modern era, you should be!), I would recommend the build it yourself option, as that's the only way you can see exactly what's going on. 
> 
> The internet's a large place, and although *this* application is safe, this install process <u>should be a red flag</u> of *I could be accidentally installing malware.* Because, you know, this is basically the Apple equivalent of running a random .exe on Windows.
> 
> Carry on 😂


# Installing the App

## Option 1: Download the Packaged App (NOT RECOMMENDED)

1. **Download the App:**  
   Clone or download the repository and locate the `Open.zip` file.  
   **Note:** The `Open.zip` file contains the `Open.app` application.

2. **Extract the .zip:**  
   Unzip the downloaded `Open.zip` to extract `Open.app` (in Finder, left click → Open)

1. **Move to Applications:**  
    Copy `Open.app` to your `/Applications` folder:
    
    ```bash
    cp -R /path/to/Open.app /Applications/
    ```
    
4. **Optional: Grant Full Disk Access:**  
    For a smoother experience without repeated permission prompts when opening files, consider giving `Open.app` full disk access:
    
    - Open **System Preferences** (or **System Settings** on newer macOS versions).
    - Navigate to **Security & Privacy > Privacy > Full Disk Access**.
    - Click the lock to make changes and add `Open.app` from your `/Applications` folder. _This step is optional but recommended if you frequently use the app, to minimize popups._
5. **Bypass Gatekeeper (Unsigned App Warning):**  
    Since the app isn’t signed (and notarization costs the money of a Apple Developer License this broke college student doesn't have), bypass the warning by:
    
    - **Right-click (or Control-click) on `Open.app` in Finder and select “Open”.**
    - Then click “Open” in the dialog that appears.
    - Alternatively, go to **System Preferences > Security & Privacy** and click “Open Anyway” for the app.

## Option 2: Build It Yourself (RECOMMENDED)

1. **Open Script Editor:**  
    Open **Script Editor** (located in `/Applications/Utilities`).
    
2. **Paste the AppleScript Code:**  
    Create a new document and paste the following code:
    
    ```applescript
    on open location theURL
        -- Toggle this variable to true to remove extraneous quotes from the decoded path (Finder's default copy path format),
        -- or false to leave the path as-is.
        set parseFinder to true
    
        -- Strip off the "open://" part.
        set thePath to text 8 thru -1 of theURL
    
        -- Decode percent-encoded characters (e.g. %20, emoji codes, etc.) using Python 3.
        set theDecodedPath to do shell script "python3 -c 'import sys, urllib.parse; print(urllib.parse.unquote(sys.argv[1]))' " & quoted form of thePath
    
        if parseFinder then
            if theDecodedPath starts with "'" and theDecodedPath ends with "'" then
                set theDecodedPath to text 2 thru -2 of theDecodedPath
            end if
            if theDecodedPath starts with "\"" and theDecodedPath ends with "\"" then
                set theDecodedPath to text 2 thru -2 of theDecodedPath
            end if
        end if
    
        -- Open the resulting path with the default application.
        do shell script "open " & quoted form of theDecodedPath
    end open location
    ```
    
3. **Save as an Application:**  
    Go to **File > Export**, choose **File Format: Application**, name it (e.g., `Open.app`), and save it.
    
4. **Edit the Info.plist:**  
    To register the `open://` URL scheme, right-click your saved `Open.app` and choose **Show Package Contents**. Then, in `Contents/Info.plist`, add the following inside the main `<dict>`:
    
    ```xml
        <key>CFBundleURLTypes</key>
        <array>
            <dict>
                <key>CFBundleURLName</key>
                <string>open</string>
                <key>CFBundleURLSchemes</key>
                <array>
                    <string>open</string>
                </array>
            </dict>
        </array>
    ```
    
5. **Register the URL Scheme:**  
    Force macOS to recognize the new URL scheme by running:
    
    ```bash
    /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f /Applications/Open.app
    ```
    

---

# Using the Custom URL Scheme with Raycast

### Raycast Snippet

Use the following Raycast snippet to quickly generate a custom URL that will open your file:

<iframe src="https://ray.so/snippets/shared?snippet=%7B%22name%22%3A%22Open%20File%20URL%20(from%20clipboard)%22%2C%22text%22%3A%22open%3A%5C%2F%5C%2F%7Bclipboard%20%7C%20percent-encode%7D%22%2C%22keyword%22%3A%22!of%22%7D" style="width:100%;aspect-ratio:2"></iframe>

This snippet uses the dynamic placeholder `{clipboard | percent-encode}` to convert your clipboard content into a percent-encoded file path, then prepends it with `open://`. Simply type `!of` in Raycast, paste your file path, and trigger it.

---

# How It All Works

- **Custom URL Scheme:**  
    The project registers a custom URL scheme (`open://`) with macOS. When a URL with this scheme is opened, macOS launches the corresponding application.
    
- **AppleScript Handler:**  
    The AppleScript code:
    
    - Removes the `open://` prefix,
    - Decodes percent-encoded characters (including spaces and emojis),
    - Optionally removes extraneous quotes (controlled by the `parseFinder` toggle),
    - And opens the file using the default macOS application.
- **Integration with Raycast:**  
    The Raycast snippet (`!of`) automatically URL‑encodes the clipboard text (your file path) and prefixes it with `open://`, allowing you to deep link files directly from apps like Reminders.
    

---

# Contributing

Contributions, bug reports, and feature requests are welcome. Please feel free to open an issue or submit a pull request.

---

# License

This project is licensed under the MIT License – see the [LICENSE](https://chatgpt.com/LICENSE) file for details.
