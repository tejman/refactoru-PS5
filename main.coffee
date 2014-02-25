alphabetSoup = (str) ->
  charArray = str.split ""
  charArray.sort().join ""

vowelCount = (str) ->
  vowels = ["a", "e", "i", "o", "u"]
  count = 0
  charArray = str.split ""

  for item in charArray
    if item.toLowerCase() in vowels
      count++

  count

coinDeterminer = (num) ->
  divArray = [1,5,7,9,11]
  coinTotal = 0
  numCopy = num

  for div in divArray by -1
    if numCopy/div >= 1
      factor = Math.floor numCopy/div
      coinTotal += factor
      numCopy += -(div*factor)
    console.log(numCopy,div)
  coinTotal
