function goto
    switch $argv[1]
    case mit
        cd "/Volumes/GoogleDrive/My Drive/Ed-MIT"
    case nedbank
        cd "/Volumes/GoogleDrive/Shared drives/Accounting-ACB-Nedbank"
    case b
        cd -    
    case '*'
        echo Oops!
    end
end