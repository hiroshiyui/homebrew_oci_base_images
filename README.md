# Homebrew OCI format base images

對於 Docker 公司近期收緊 Free Team 的 freemium 政策（[iThome 報導](https://www.ithome.com.tw/news/155971)、[InfoWorld 報導](https://www.infoworld.com/article/3690890/docker-sunsets-free-team-subscriptions-roiling-open-source-projects.html)）很多人不能諒解。

我想他們之中或許不少人也不知道做網路服務的一項現實：**儲存空間要花錢、流量要花錢、租用雲端或維護自建機房也要花錢**，有些人一派天真地說「是活躍的社群促進了某某網路服務公司進步，公司忘恩負義獅子大開口跟我們收錢、或是限制或砍掉公開 API 千不該萬不該」之類 blahblahblah 的，我聽到這種話，都會想問：「請問你自認很活躍的『參與』帶來的效益，能夠幫該公司付這期的機房支出嗎？」

至少我在 Docker 這裡只看的到一群人沒付出什麼，只是為了自己的方便去利用 Docker 的 Hub registry，**完全沒意識到自己是白白燒別人的錢。**

我的臉皮沒那麼厚，我決定維護自己的 base images，雖然我的經濟狀況也無法轉為 Docker 的付費用戶，但是至少我可以自立自強。

這個 Git repository 就是擺幾個我會用到的 base images 的產生程式。(目前是只先放上 Arch Linux 的)

透過 podman 或 docker 的 image import/save 功能，其實私人組織自己維護 base images 也不必非得依賴從 registry pull images。

而且自己維護 base images，對於 infrastructure 又能多一些掌握，雖然有人會覺得多了點麻煩，但是我覺得在供應鍊稽核之類的需求上，仍然有很多好處。

這篇大概又會被轉到什麼地方，被斷章取義後對我口誅筆伐、窮盡羞辱之能事。沒辦法，人就是江湖，浪費時間跟人嘔氣，不如多陪家人與貓。
