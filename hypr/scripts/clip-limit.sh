#!/bin/bash
pkill wl-paste

# Teks: Simpan, terus hapus ID ke-11 dan seterusnya
wl-paste --type text --watch bash -c "cliphist store && cliphist list | tail -n +11 | cut -f1 | cliphist delete" &

# Gambar: Sama, biar screenshot F12 lu juga kena limit
wl-paste --type image --watch bash -c "cliphist store && cliphist list | tail -n +11 | cut -f1 | cliphist delete"
