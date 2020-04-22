def test_simplest():
    assert True


def is_empty(value):
    try:
        return len(value) == 0
    except TypeError:
        return False


def test_empty_list():
    assert is_empty([]) is True


def test_empty_dict():
    assert is_empty({}) is True


def test_list_is_not_empty():
    assert is_empty([1, 2, 3]) is False


def test_dict_is_not_empty():
    assert is_empty({"item": 1}) is False


def test_integer_is_false():
    assert is_empty(1) is False


def test_long_string_comparison():
    string = "Questa è una stringa, molto, molto, molto, molto, molto, molto, molto, molto lunga" \
             " e che contiene alcune differenze difficili da trovare"
    expected = "Questa è una stringa, molto, molto, molto, molto, molto, molto, molto, molto" \
                " lunga e che contiene alcune differenze difficili da trovare"
    assert string == expected


class TestSimple:
    def test_simple(self):
        assert True
