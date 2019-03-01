function miplibdownloadfromcsv()
    files = readdir("csv/")
    csvFiles = Vector{String}()
    for file in files
        if length(file) > 4
            if lowercase(file[(end-3):end]) == ".csv"
                push!(csvFiles, file)
            end
        end
    end

    url = "https://miplib.zib.de/WebData/instances/"
    for file in csvFiles
        dirName = file[1:(end-4)]
        mkdir(dirName)
        open("csv/"*file) do instances
            readline(instances)
            while !eof(instances)
                line = readline(instances)
                instance = split(line, ',')[1][2:(end-1)]
                try
                    download(url*instance*".gz", dirName*"/"*instance*".gz")
                catch
                    @warn "Download from "*url*instance*".gz did not work"
                end
            end
        end
    end
end
