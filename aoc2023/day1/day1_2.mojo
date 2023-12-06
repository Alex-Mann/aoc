from utils.vector import DynamicVector

fn str_lookahead(mystr: String) -> (Int, Int):

	var first = -1
	var last = -1

	var ilast = 0
	for i in range(0, len(mystr)):
		for j in range(3, 6):
			if i+j > len(mystr):
				ilast = len(mystr)
			else:
				ilast = i+j
			if isdigit(ord(mystr[i])):
				try:
					if isdigit(ord(mystr[i])):
						if first == -1:
							first = atol(mystr[i])
						last = atol(mystr[i])
				except:
					pass
			elif mystr[i:ilast] == 'one':
				if first == -1:
					first = 1
				last = 1
			elif mystr[i:ilast] == 'two':
				if first == -1:
					first = 2
				last = 2
			elif mystr[i:ilast] == 'three':
				if first == -1:
					first = 3
				last = 3
			elif mystr[i:ilast] == 'four':
				if first == -1:
					first = 4
				last = 4
			elif mystr[i:ilast] == 'five':
				if first == -1:
					first = 5
				last = 5
			elif mystr[i:ilast] == 'six':
				if first == -1:
					first = 6
				last = 6
			elif mystr[i:ilast] == 'seven':
				if first == -1:
					first = 7
				last = 7
			elif mystr[i:ilast] == 'eight':
				if first == -1:
					first = 8
				last = 8
			elif mystr[i:ilast] == 'nine':
				if first == -1:
					first = 9
				last = 9


	return first, last

fn main():

	try:
		var f = open("day1.input", "r")
		let vec = f.read().split("\n")
		var num = 0
		for i in range(0, len(vec)):
			if vec[i] == '':
				continue
			var first = 0
			var last = 0
			first, last = str_lookahead(vec[i])
			let val = atol(String(str(first) + str(last)))
			print(val)
			num += val

		print(num)

		f.close()
	except:
		print("Error reading file")
