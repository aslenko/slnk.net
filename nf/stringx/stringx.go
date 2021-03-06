package stringx

func Reverse(s string) string {
	b := []rune(s) //if you use byte instead of rune, it won't handle Chinese characters
	for i := 0; i < len(b)/2; i++ {
		j := len(b) - i - 1
		b[i], b[j] = b[j], b[i]
	}
	return string(b)
}
