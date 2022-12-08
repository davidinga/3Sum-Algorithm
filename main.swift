/*
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.
*/

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var nums = nums.sorted()
    for i in nums.indices {
        if i > 0, nums[i] == nums[i - 1] { continue }
        var j = i + 1, k = nums.count - 1
        while j < k {
            let value = nums[i] + nums[j] + nums[k]
            if value == 0 {
                result.append([nums[i], nums[j], nums[k]])
                repeat {
                    j += 1
                } while j < k && nums[j] == nums[j - 1]
            } else if value < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return result
}