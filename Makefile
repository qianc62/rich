test:
	python -m pytest --cov-report term-missing --cov=rich tests/ -vv
typecheck:
	python -m mypy -p rich --ignore-missing-imports --warn-unreachable
typecheck-report:
	mypy -p rich --ignore-missing-imports --warn-unreachable --html-report mypy_report
.PHONY: docs
docs:
	cd docs; make html
