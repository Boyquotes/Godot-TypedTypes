extends Reference
class_name TypedArray

var _type: int = TYPE_INT
var _data: Array = []
var _iter_current: int = 0


# Iteration
func _iter_should_continue():
	return (_iter_current < _data.size())

func _iter_init(_arg):
	_iter_current = 0
	return _iter_should_continue()

func _iter_next(_arg):
	_iter_current += 1
	return _iter_should_continue()

func _iter_get(_arg):
	return _data[_iter_current]


# Object Override
func get_value(idx: int):
	return _data[idx]
	

# Array Passthrough
func append(value) -> void:
	if not typeof(value) == _type:
		assert(false)
	_data.append(value)

func back():
	return _data.back()

func bsearch(value, before: bool = true) -> int:
	return _data.bsearch(value, before)

func bsearch_custom(value, obj: Object, function: String, before: bool = true) -> int:
	return _data.bsearch_custom(value, obj, function, before)

func clear() -> void:
	_data.clear()

func count(value) -> int:
	if not typeof(value) == _type:
		assert(false)
	return _data.count(value)

func duplicate(deep: bool = false):
	var n = duplicate(false) # Cant type this. Sad Face
	n._data = _data.duplicate(deep)
	return n

func empty()-> bool:
	return _data.empty()

func erase(value) -> void:
	if not typeof(value) == _type:
		assert(false)
	_data.erase(value)

func find(what, from: int = 0) -> int:
	if not typeof(what) == _type:
		assert(false)
	return _data.find(what, from)

func find_last(value) -> int:
	if not typeof(value) == _type:
		assert(false)
	return find_last(value)

func front():
	return _data.front()

func has(value) -> bool:
	if not typeof(value) == _type:
		assert(false)
	return _data.has(value)

func insert(position: int, value) -> void:
	if not typeof(value) == _type:
		assert(false)
	_data.insert(position, value)

func invert() -> void:
	_data.invert()

func max():
	return _data.max()

func min():
	return _data.min()

func pop_back():
	return _data.pop_back()

func pop_front():
	return _data.pop_front()

func push_back(value) -> void:
	if not typeof(value) == _type:
		assert(false)
	_data.push_back(value)

func push_front(value) -> void:
	if not typeof(value) == _type:
		assert(false)
	_data.push_front(value)

func remove(position: int) -> void:
	_data.remove(position)

func resize(size: int) -> void:
	_data.resize(size)

func rfind(what, from: int = -1) -> int:
	if not typeof(what) == _type:
		assert(false)
	return _data.rfind(what, from)

func shuffle() -> void:
	_data.shuffle()

func size() -> int:
	return _data.size()

func sort() -> void:
	_data.sort()

func sort_custom(obj: Object, function: String) -> void:
	_data.sort_custom(obj, function)
