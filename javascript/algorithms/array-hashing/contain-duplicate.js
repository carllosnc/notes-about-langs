function containDuplicates(nums){
    let hasDuplicate = false

    for(let i = 0; i < nums.length; i++){
        for(let ii = 0; ii < i; ii++){
            if(nums[i] === nums[ii]){
                hasDuplicate = true
                break
            }
        }

        if(hasDuplicate) break
    }

    return hasDuplicate
}


function removeDuplicates(arr){
    let result = []

    for(let i = 0; i < arr.length; i++){
        let duplicated = false

        for(let ii = 0; ii < i; ii++){
            console.log(`${arr[i]}`, `${arr[ii]}`)

            if(arr[i] === arr[ii]){
                duplicated = true
                break
            }
        }

        console.log('---')

        if(!duplicated){
            result.push(arr[i])
        }
    }

    return result
}

// console.log(removeDuplicates([1, 1, 2, 2, 3, 4, 5, 10, 20, 2, 3, 1, 3, 4]))

console.log(containDuplicates([1, 2, 2, 3, 1, 3, 4, 5]))
console.log(containDuplicates([1, 2, 3, 4]))
console.log(containDuplicates([1, 3, 10, 23, 34]))

