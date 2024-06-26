"""Unit tests for the CLI commands module."""

import pytest
from click.testing import CliRunner

from readmeai.cli.commands import main


@pytest.fixture
def runner():
    return CliRunner()


def test_commands_with_defaults(runner):
    """Test the commands function with default options."""
    with runner.isolated_filesystem():
        result = runner.invoke(
            main,
            [
                "--repository",
                "https://github.com/eli64s/readme-ai-streamlit",
                "--offline",
            ],
        )
        assert result.exit_code == 0


def test_commands_with_invalid_option(runner):
    """Test the commands function with an invalid option."""
    result = runner.invoke(
        main,
        ["--align", "invalid", "--repository", "https://github.com/test/repo"],
    )
    assert result.exit_code != 0


if __name__ == "__main__":
    test_commands_with_defaults()
    test_commands_with_invalid_option()
