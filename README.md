# MIPLIB-Downloader

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Script that download instances from MIPLIB base on csv.

### Prerequisites

julia 1.0.0</br>
curl or wget

### Testing
After cloning this repository try it:</br>
```julia
julia> include("MIPLIBDownload.jl")
julia> miplibdownloadfromcsv()
```
This should download 11 instances from MIPLIB in a new "Test Set" folder

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
