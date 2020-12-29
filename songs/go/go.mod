module tutor

go 1.15

replace example.com/mysongs => ./mysongs
require example.com/mysongs v1.0.0

replace example.com/myutils => ./myutils
require example.com/myutils v1.0.0
