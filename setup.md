setup swarm squad


python3 -m venv venv

curl -LsSf https://astral.sh/uv/install.sh | sh
curl -fsSL https://get.pnpm.io/install.sh | sh

replace all instances of:

```
source .venv/bin/activate
```

with 

```
. .venv/bin/activate
```

inside of the makefile in swarm squad

cd Swarm-Squad-Ep2
make install

exit



source ./.venv/bin/activate
make dev


python .\Swarm-Squad-Ep2\backend\scripts\run_simulation.py


-------------------------------------------------------------------------------------


setup arch gateway


install docker and compose


sudo apt install -y docker.io docker-compose; sudo groupadd docker; sudo usermod -aG docker $USER; sudo systemctl start docker; sudo systemctl enable docker; newgrp docker


install python 3.12

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install -y python3.12 python3.12-venv python3.12-dev
python3.12 -m venv venv-archgate



source venv-archgate/bin/activate   


pip install archgw==0.2.4
pip install --upgrade pip



install basic ollama and model

curl -fsSL https://ollama.com/install.sh | sh


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