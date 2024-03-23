YAML=local.yaml
TASKS ?=
ifneq ("","$(TASKS)")
#$(info "asdf")
TASKS := -t $(TASKS)
#$(info $(TASKS))
endif

all:
	ansible-playbook $(YAML) $(TASKS) --ask-become-pass

lint:
	ansible-lint $(YAML)

# --ask-become-pass