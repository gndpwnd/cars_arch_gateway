cd Swarm-Squad-Ep2
make

python -m venv venv
.\venv\Scripts\Activate.ps1
pip install -r .\Swarm-Squad-Ep2\backend\requirements.txt

python .\Swarm-Squad-Ep2\backend\scripts\run_simulation.py

install docker
install docker compose
install python 3.12



python -m venv venv

source venv/bin/activate   

venv\Scripts\activate

pip install archgw==0.2.3


archgw up arch_config.yaml


curl --header 'Content-Type: application/json' \
  --data '{"messages": [{"role": "user","content": "what is exchange rate for gbp"}]}' \
  http://localhost:10000/v1/chat/completions | jq ".choices[0].message.content"

curl --header 'Content-Type: application/json' \
  --data '{"messages": [{"role": "user","content": "show me list of currencies that are supported for conversion"}]}' \
  http://localhost:10000/v1/chat/completions | jq ".choices[0].message.content"





curl --header 'Content-Type: application/json' \
  --header 'x-arch-llm-provider-hint: ministral-3b' \
  --data '{"messages": [{"role": "user","content": "What is the capital of France?"}]}' \
  http://localhost:12000/v1/chat/completions