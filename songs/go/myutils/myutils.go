package myutils

func exclude(value string, tags []string) []string {
	var newTags []string

	for _, tag := range tags {
		if tag != value {
			newTags = append(newTags, tag)
		}
	}

	return newTags
}

func Unique(tags []string) []string {
	if len(tags) <= 1 {
		return tags
	} else {
		head := tags[0]
		tail := tags[1:len(tags)]

		newHeads := []string{head}
		newTails := Unique(exclude(head, tail))

		return append(newHeads, newTails...)
	}
}
