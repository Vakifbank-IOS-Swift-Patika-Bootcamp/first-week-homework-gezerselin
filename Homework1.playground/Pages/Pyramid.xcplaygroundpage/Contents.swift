import Foundation

let starCount = 10

drawPyramid(starCount: starCount)
drawSymmetricalPyramid(starCount: starCount)

func drawPyramid(starCount :Int){
    for i in 1...starCount{
        var star  = ""
        var j = 1
        while j <= i{
            star += "*"
            j += 1
        }
        print(star)
    }
}

func drawSymmetricalPyramid(starCount :Int){
    for i in 1...starCount{
        var star  = ""
        var countOfSpace = 1
        while countOfSpace < starCount-i+1 {
            star += " "
            countOfSpace += 1
        }
        var j = 1
        while j <= i{
            star += "* "
            j += 1
        }
        print(star)
    }
}
