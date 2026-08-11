# Companies Data Extractor (v1.8)

A professional-grade, high-performance desktop automation system designed for high-volume data extraction. This system features a React dashboard, native Windows integration, and automated VPN security verification.

---

## 🏁 How to Run (Step-by-Step Guide)

Follow these steps in order to run the extraction engine successfully:

### Step 1: Unblock the Folder (Crucial Windows Security Bypass)
When folders or ZIP files are downloaded from the internet, Windows automatically flags them as untrusted. This can block scripts from running.
1. Right-click the downloaded `.zip` file **BEFORE** extracting it.
2. Click **Properties** in the context menu.
3. In the **General** tab, look at the bottom for a checkbox that says **Unblock**.
4. Check the **Unblock** box and click **Apply**, then **OK**.
5. Extract the contents of the ZIP folder.

### Step 2: Connect to your VPN Client
The extraction engine is programmed to run **ONLY when a secure VPN connection is active** to protect your network profile and IP address.
1. Open your preferred VPN client (e.g., ProtonVPN, WireGuard, NordVPN, ExpressVPN, etc.).
2. Connect to any server of your choice.
3. Make sure the VPN connection is fully active before proceeding.
> [!NOTE]
> The engine automatically scans active network interfaces for keywords (such as `VPN`, `WireGuard`, `TUN`, `TAP`, `Proton`, etc.). If it does not detect an active VPN network interface, it will display a warning dialog and abort execution to safeguard your IP.

### Step 3: Launch the Application
You have two options for starting the application:

*   **Option A: Normal Mode (Interactive Terminal)**
    Double-click **`Start_Engine.bat`**. 
    *   This opens a command prompt window showing live log outputs.
    *   On the very first run, it will automatically download and install required dependencies.
    *   It will automatically open the React dashboard in your default browser at **`http://localhost:8000`**.
    *   *Note: Leave this terminal window open while using the app.*

*   **Option B: Background Mode (Silent Run)**
    Double-click **`Launch_App.vbs`**.
    *   This launches the API server in the background (no black terminal windows will be shown).
    *   It will automatically open your default browser to the dashboard.

### Step 4: Stop the Application
When you are done extracting data:
1. Double-click **`stop_app.bat`**.
2. This will cleanly close and terminate all python background server and scraper processes.

---

## ⚙️ Configuration (`config.py`)

You can customize the extractor behavior by modifying the variables in **[`config.py`](file:///c:/Users/chare/Downloads/Companies_Data_Extractor_App%20v1.8/Companies_Data_Extracter_Repo/config.py)**. Restart the app after editing:

*   **`DELAY_MIN_SECONDS` & `DELAY_MAX_SECONDS`** (Default: `30` to `60` seconds):
    The scraper pauses for a random duration between these values after extracting each record. This mimics human browsing behavior and prevents the target website from blocking your IP.
*   **`MAX_RECORDS_PER_FILE`** (Default: `500` records):
    The maximum number of Company CIN numbers allowed in a single uploaded Excel file.

---

## 🛠 Troubleshooting

*   **Error: "NO SECURE VPN CONNECTION DETECTED"**
    *   Ensure your VPN client is connected and active.
    *   If you are connected but still see this warning, run `test_vpn.py` in a terminal to inspect your active connections, or check that your VPN adapter name contains one of the supported keywords.
*   **Browser does not open automatically**
    *   You can manually open your browser and navigate to **`http://localhost:8000`** after starting the engine.
*   **Firewall blocks**
    *   If Windows Defender asks for permission when launching Python or Uvicorn, choose "Allow Access" for Private Networks.
