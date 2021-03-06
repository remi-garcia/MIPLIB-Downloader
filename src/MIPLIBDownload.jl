function miplibdownloadfromcsv()
    files = readdir("../csv/")
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
        mkdir("../"*dirName)
        open("../csv/"*file) do instances
            readline(instances)
            while !eof(instances)
                line = readline(instances)
                instance = strip(split(line, ',')[1], [' ', '"', '\n'])
                try
                    download(url*instance*".mps.gz", "../"*dirName*"/"*instance*".mps.gz")
                catch
                    @warn "Download from "*url*instance*".mps.gz did not work"
                end
            end
        end
    end
end
