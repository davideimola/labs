import os
from fixture import is_verbose


def test_create_file(tmpdir):
    path = tmpdir.mkdir('subdir').join('file.txt')
    path.write('content!')
    # print(path.strpath)
    assert 1


def test_is_verbose_fails(tmpdir):
    path = tmpdir.mkdir('etc').join('app.conf')
    path.write('[main]')
    assert is_verbose(path.strpath) is True


def test_is_verbose_succeeds_false(tmpdir):
    path = tmpdir.mkdir('etc').join('app.conf')
    path.write('[main]\nverbose = 0')
    assert is_verbose(path.strpath) is False


def test_is_verbose_succeeds_true(tmpdir):
    path = tmpdir.mkdir('etc').join('app.conf')
    path.write('[main]\nverbose = 1')
    assert is_verbose(path.strpath) is True
