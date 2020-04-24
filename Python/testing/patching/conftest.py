import pytest


class FakeJenkins:
    def get_node_config(self, *a):
        return """<?xml version="1.0" encoding="UTF-8"?><slave><slave>"""

    def __getattr__(self, *a):
        return self

    def __call__(self, *a, **kw):
        return {}


@pytest.fixture(autouse=True)
def no_jenkins_requests(monkeypatch):
    monkeypatch.setattr("jenkins.Jenkins", lambda *a: FakeJenkins())
