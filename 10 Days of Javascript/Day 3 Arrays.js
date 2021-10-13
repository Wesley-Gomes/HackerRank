function getSecondLargest(nums) {
    let max = Math.max.apply(null,nums);
    
    while (nums.includes(max))
    {
        nums.splice(nums.indexOf(Math.max.apply(null, nums)), 1);
    }
    
    return Math.max.apply(null, nums);
}