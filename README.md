# FTP IO actions

Using lftp and alpine image with the mirror command to do IO actions on the given FTP server

## Usage

```yml
- name: Run lukas-weiss/action-ftp-io-actions@v1
    uses: lukas-weiss/action-ftp-io-actions@v1
    with:
      ftp_server: 'ftp://server.tld'
      ftp_user: 'user'
      ftp_password: 'pa$$word'
      ftp_io_action: 'download'
      source_folder: './path/to/folder'
      target_folder: './path/to/folder'
      dry_run: 'false'
```

### Parameters

- `ftp_server`: url to your FTP server
- `ftp_user`: User with access to your FTP share
- `ftp_password`: Your FTP password
- `ftp_io_action`: Your IO action values can be 'download|upload' default: download 
- `source_folder`: Source folder of the chosen action
- `target_folder`: Target folder of the chosen action
- `dry_run`: Do a dry run of your action (no execution) default: false

## License

MIT License