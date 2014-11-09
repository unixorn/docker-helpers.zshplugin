# Copyright 2014 Joseph Block <jpb@unixorn.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Add our plugin's bin diretory to user's path
PLUGIN_D="$(dirname $0)"
export PATH=${PATH}:${PLUGIN_D}/bin

# Most of these aliases are from http://www.kartar.net/2014/03/some-useful-docker-bash-functions-and-aliases/
alias dkd="docker run -d -P"
alias dki="docker run -t -i -P"
alias dkl='docker ps -l -q'
alias docker-daemonize="docker run -d -P"
alias docker-interactive="docker run -t -i -P"
alias docker-last='docker ps -l -q'
alias dockerbuild='docker build'
alias dockerimages='docker images'
alias dockerps='docker ps'

dkb() {
  docker build -t="$1" .
}

docker-zsh() {
  local TAG=$1
  docker run -v /tmp:/host_tmp:rw -i -t $TAG /bin/zsh
}
