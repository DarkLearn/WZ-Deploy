# #!/bin/bash

# set -e
# python update.py
# exec python -m bot

#!/bin/bash
set -e
source .venv/bin/activate
python3 update.py
exec python3 -m bot
