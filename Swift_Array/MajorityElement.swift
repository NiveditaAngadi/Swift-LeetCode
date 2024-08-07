/*
* Question Link: https://leetcode.com/problems/majority-element/
* Primary idea: traverse the array and track the majority element accordingly
*
* Time Complexity: O(n), Space Complexity: O(1)
 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 */

import Foundation
class MajorityElement {
    
    func majorityElement(_ nums: [Int]) -> Int {
       var count = 0
       var candidate = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            
            count += (candidate == num) ? 1 : -1
        }
        
        return candidate
    }
}

