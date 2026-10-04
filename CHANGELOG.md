# Release notes

<!-- do not remove -->

## 0.0.1
First public release.

### Added

- Windows installer (`Snooper-Setup-0.0.1.exe`), per-user, no administrator rights required
- Optional "start automatically when I sign in" during setup
- System-tray application with pause (15 min, 30 min, custom) and resume
- Foreground application and window interval tracking
- Windows idle detection, reported separately from active foreground use
- Process start and stop events
- Monitoring sessions stored in SQLite under `%LOCALAPPDATA%\Snooper`
- Table-style session report window: last completed session and current session stats
- Automatic cleanup of session data beyond the configured retention period
- Single-instance guard; a second launch exits without opening a duplicate
- `snooper_pkg` on PyPI for running from source
