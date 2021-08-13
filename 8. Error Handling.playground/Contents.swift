
enum PrinterError: Error{
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String{
    if printerName == "Never Has Toner"{
        throw PrinterError.noToner
    }
    
    return "Job sent"
}

do{
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch{
    print(error)
}

do {
    let printerResponse = try send(job: 1140, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("i'll just put this over here, with the rest of fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError). ")
} catch {
    print(error)
}


let pinrterSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Nerver Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk","egg", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer{
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}

fridgeContains("banana")
print(fridgeIsOpen)

