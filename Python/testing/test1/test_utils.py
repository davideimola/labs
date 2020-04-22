from utils import build_message, strtobool
import pytest


def test_build_message_success(response):
    result = build_message(response())
    assert result["success"] is True


def test_build_message_failure(response):
    result = build_message(response(400, "not allowed here!"))
    assert result["success"] is False
    assert result["error"] == "not allowed here!"


class TestStrToBool:

    @pytest.mark.parametrize('user_input', ['y', '1', 'Y', 'yes', 'YES', '', 'YeS     '])
    def test_true_vals(self, user_input):
        assert strtobool(user_input) is True

    @pytest.mark.parametrize('user_input', ['no', '0', 'N', 'NO', 'n'])
    def test_false_vals(self, user_input):
        assert strtobool(user_input) is False

    # def test_y_is_true(self):
    #     assert strtobool('y') is True
    #
    # def test_1_is_true(self):
    #     assert strtobool('1') is True
    #
    # def test_Y_is_true(self):
    #     assert strtobool('Y') is True
    #
    # def test_yes_is_true(self):
    #     assert strtobool('yes') is True
    #
    # def test_YES_is_true(self):
    #     assert strtobool('YES') is True
    #
    # def test_empty_is_true(self):
    #     assert strtobool('') is True
