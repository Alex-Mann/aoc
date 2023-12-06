from utils.vector import DynamicVector

fn main():

	try:
		var f = open("day1.input", "r")
		let vec = f.read().split("\n")
		var num = 0
		for i in range(0, len(vec)):
			var first_num = String()
			var sec_num = String()
			var first_set = False
			var sec_set = False
			for j in range(0, len(vec[i])):
				try:
					if not first_set and isdigit(ord(vec[i][j])):
						first_num = vec[i][j]
						first_set = True
					if not sec_set and isdigit(ord(vec[i][len(vec[i])-j-1])):
						sec_num = vec[i][len(vec[i])-j-1]
						sec_set = True
					if first_set and sec_set:
						print(first_num, sec_num)
						let newnum = atol(first_num + sec_num)
						print(newnum)
						num += newnum
						break
				except:
					pass

			print(num)

		f.close()
	except:
		print("Error reading file")
