//
//  SortColors.swift
//  
//
//  Created by Nivedita Angadi on 08/08/24.
//
/*
 75. Sort Colors
 https://leetcode.com/problems/sort-colors

 Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.

  

 Example 1:

 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 Example 2:

 Input: nums = [2,0,1]
 Output: [0,1,2]

 Time complexity = O(n)
 */
import Foundation

class Solution {
    func sortColors(_ nums: inout [Int]) {
    var start = 0
    var current = 0
    var end = nums.count - 1
    
    while current <= end {
        if nums[current] == 0 {
            let temp = nums[start]
            nums[start] = nums[current]
            nums[current] = temp
            
            current += 1
            start += 1
        } else if nums[current] == 1 {
            current += 1
        } else if nums[current] == 2 {
            let temp = nums[end]
            nums[end] = nums[current]
            nums[current] = temp
            
            end -= 1
        }
    }
  }
}
