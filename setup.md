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


install ollama, get 3.2:1b model, setup docker and python3.12 venv, install archgw

curl -fsSL https://ollama.com/install.sh | sh


docker pull ollama/ollama

docker run -d --name ollama -p 11434:11434

docker exec -it ollama ollama run llama3.2

ollama run llama3.2:1b


setup arch gateway


sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install -y jq python3.12 python3.12-venv python3.12-dev docker.io docker-compose; sudo groupadd docker; sudo usermod -aG docker $USER; sudo systemctl start docker; sudo systemctl enable docker; newgrp docker



python3.12 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install archgw==0.2.4  



-------------------------------------------------------------------------------------

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


run archgw

archgw up arch_config.yaml


run docker-compose for frontend apps

docker-compose up -d





 Error Error calling gateway API: x-arch-llm-provider header not set, llm gateway cannot perform routing


if model_selector and model_selector != "":
    headers["x-arch-llm-provider-hint"] = model_selector

change to

if model_selector and model_selector != "":
          headers["x-arch-llm-provider"] = model_selector  # Correct header name



Error
Error calling gateway API: No model specified in request and couldn't determine model name from arch_config. Model name in req: None, arch_config, provider: local-llama, model: None



load model from yaml config



Error
Error calling gateway API: upstream connect error or disconnect/reset before headers. reset reason: remote connection failure, transport failure reason: delayed connect error: Connection refused


