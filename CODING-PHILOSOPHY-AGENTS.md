# Coding Philosophy for agents

## Prefer isolated environments
Default to project specific installations. Avoid any global installations or tool use 
when coding. If you believe this rule should be voilated prompt the user to explicitly 
ask for their input before continuing.

#### Keep cloud environments in mind 
When developing think about how this repo could be used by cloud agents or human 
developers using cloud development environments. Avoid locally specific configs and 
tools. Everything to work in the code base should live in the code base.
