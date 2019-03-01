# MIPLIB-Downloader
Script that download instances from MIPLIB base on csv.

### Prerequisites

julia 1.0.0</br>
curl or wget

### Example
To download the specific set "Binary Set" from MIPLIB :</br>
Get the list here : https://miplib.zib.de/set_binary.html</br>
Download the csv</br>
Put the csv in the csv/ folder</br>
And then use julia:</br>
```julia
julia> include("MIPLIBDownload.jl")
julia> miplibdownloadfromcsv()
```

### Problem Collections

* MIPLIB: https://miplib.zib.de/
