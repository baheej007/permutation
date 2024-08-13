def permute(nums):
    result = []

    def backtrack(path, options):
        if not options:
            result.append(path)
            return
        for i in range(len(options)):
            backtrack(path + [options[i]], options[:i] + options[i+1:])

    backtrack([], nums)
    return result

print(permute([1, 2, 3]))  
# Output: [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
