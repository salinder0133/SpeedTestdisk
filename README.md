# Disk & USB Speed Benchmark Tool

A lightweight, interactive Windows Batch script to benchmark the sequential Read and Write speeds of any connected internal drive (HDD/SSD) or external USB storage.

Powered natively by Windows System Assessment Tool (`winsat`), requiring no third-party software installations.

---

## 🚀 Features

- **Interactive Drive Selection:** Dynamically scans and lists all available drives on your system.
- **Accurate Benchmarks:** Uses Windows native `winsat disk` engine for precise read/write metrics.
- **Safety Checks:** Automatically verifies Administrator privileges and validates input drive letters.
- **Loop Support:** Test multiple drives in one go without restarting the script.
- **Clean UI:** Terminal-friendly layout with error handling.

---

## 📋 Prerequisites

- **OS:** Windows 7, 8, 10, or 11
- **Permissions:** Administrator access (required by Windows to run hardware disk assessments)

---

## 🛠️️ How to Use

1. **Download or Create the Script:**
   - Clone the repository or download `SpeedTest.bat`.
   - Alternatively, copy the script code into a text file and save it as `SpeedTest.bat`.

2. **Run as Administrator:**
   - Right-click `SpeedTest.bat` and select **Run as administrator**.

3. **Follow On-Screen Prompts:**
   - Review the list of detected drives.
   - Type your target drive letter (e.g., `C`, `D`, `E`) and press `Enter`.
   - Wait a few seconds while the read and write operations complete.

---

## 📊 Sample Output

```text
======================================================
             DISK / USB SPEED BENCHMARK
======================================================

Available Drives:
Caption  Description       VolumeName
C:       Local Fixed Disk  Windows
D:       Local Fixed Disk  Data
E:       Removable Disk    SANDISK USB

Enter the drive letter to test (e.g. C, D, E): E

======================================================
 Testing Drive: E:
 Running benchmark, please wait a moment...
======================================================

> Disk  Sequential 64.0 Read                   112.45 MB/s
> Disk  Sequential 64.0 Write                   42.18 MB/s
