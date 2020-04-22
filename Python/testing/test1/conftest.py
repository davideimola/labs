import tempfile
import pytest
import os


class FakeResponse:
    def __init__(self, status=200, body=""):
        self.status = status
        self.body = body


@pytest.fixture
def response():
    def apply(status=200, body=""):
        return FakeResponse(status=status, body=body)
    return apply


# @pytest.fixture
# def git_repository(request):
#     d = tempfile.mkdtemp()
#     os.system("""
#     cd {d}
#     git init
#     touch a
#     git config user.email 'you@example.com'
#     git config user.name 'Your Name'
#     git add a
#     git commit -m 'A' A
#     """.format(d=d))
#
#     def finalizer():
#         os.system(f'rm -r {d}')
#
#     request.addfinalizer(finalizer)
#
#     return d

# Different type of scope
# 'function'     Fixture is called once per test.
# 'class'     Fixture is called once per class of tests
# 'module'     Fixture is called once per module
# 'session'     Fixture is called once per session
@pytest.fixture
def git_repository(tmpdir, scope='class'):
    d = tmpdir.mkdir('repo')
    os.system("""
    cd {d}
    git init
    touch a
    git config user.email 'you@example.com'
    git config user.name 'Your Name'
    git add a
    git commit -m 'A' A
    """.format(d=d))

    return d
