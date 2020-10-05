# ArisInifiBuilder
AIB Build System

## Directory Explanations:
`./AGBuilder-x86` - The 64-bit x86 ISO builders for Arisblu \
`./AGBuilder-x86/normal` - Default configurations for Arisblu \
`./AGBuilder-x86/libre` - Removes all non-free software from the systems \
`./AGBuilder-x86/normal/*` - Desktop environment build configurations \
`./AGBuilder-x86/normal/*/linux` - Default Linux setup for given Desktop \
`./AGBuilder-x86/normal/*/illumos`- Default Illumos setup for given Desktop \
`./AGBuilder-x86/normal/*/freebsd`- Default FreeBSD setup for given Desktop \
`./AGBuilder-x86/libre/*/linux` - Full libre (no non-free software at all) Linux setup for given Desktop \
`./AGBuilder-x86/libre/*/illumos`- Full libre (no non-free software at all) Illumos setup for given Desktop \
`./AGBuilder-x86/libre/*/freebsd`- Full libre (no non-free software at all) FreeBSD setup for given Desktop 

----

`./CEBuilder-x86` - The Community Edition builder for people to fork. \
`./CEBuilder-x86/normal` - CE's normal ISO builders \
`./CEBuilder-x86/libre` - CE's Libre ISO builders

## Managing future editions
### Adding new desktop environments
- Make sure desktop is packaged in either RPM or DEB format
- Make sure desktop is open-source software
- Make sure desktop is functional on all three bases (if not, make sure it is first)
- If desktop is to become an official edition, make an issue on GitHub
- If desktop is CE edition, continue to CE rules.

### CE Rules and Management
Due to the open-enterprise nature of Arisblu, Community Editions (often refereed to as CEs') are held under fairly strict rules on multiple fronts.

- Use software that works well with your edition's goal. Don't pick something because it looks good, Arisblu is about function over form.
- Have a website. There are strict rules for a website:
  - Domain must look like one of the following:
    - arisblu-*cename*`-ce.tld`
    - arisblu-*cename*`.tld`
    - arisblu-*cename*`-ce.github.io`
    - arisblu-*cename*`.github.io`
    - arisblu*cename*`ce.tld`
    - arisblu*cename*`.tld`
    - arisblu*cename*`ce.github.io`
    - arisblu*cename*`.github.io`
    > The highlighted sections are the default endings. Replace *cename* with the name of the community edition, as well as replace `.tld` with the domain extension of *almost* your choice.
  - Have your domain registrar's from one of the following:
    - NameCheap
    - Porkbun
    - Dynadot
    - 101Domains
    - Name . com
    - Epik 
    - OVH
    - Gandi
    - Tucows
    - Njalla
  - If one of the above is not picked, at least do NOT use:
    - GoDaddy
    - Domain.com
    - Google Domains
    - Hover
    - Freenom
  - Picking a different registrar, it must fit ALL the following rules:
    - WhoIS Guard is free
    - Supports external DNS `OR` can provide cheap or free SSL/TLS certificates
    - Must support multi-year purchases
    - .com TLD must be $22 or less
  - Here are the rules for CE's picking TLDs:
    - If you buy the .gay TLD, please also buy and forward .com, .net, and .org to the .gay tld. We support LGBT, but domain squatting for this stuff can be dangerous to your project and ours.
    - Absolutely do NOT buy a trade domain, such as .cars, .tech, .construction, etc. These domains might seem good, but they are not always the best. They will be rejected. 
    - If buying a ccTLD, be sure to read up on the rules for the TLD. For example, `.us` is only for people and businesses in the United States. 
    - Almost all ccTLDs, as long as your domain(s) follows the rules, are accepted. We will not accept `.us, .uk, .ca` or any country-restricted ccTLD. We will also not accept `.ga, .ml, .tk, .cf, .gq` due to their association with the Freenom platform, as well as scam websites.
    - No NSFW TLDs, so basically no `.porn, .webcam, .sexy, .sex, .adult, .cam`, `.tube` can be accepted if you convince us it makes sense for your project. 
    - You must have a *good-looking* website. Don't hunt down `Soviet Tax Service 1998` type themes. It must look modern, and must be usable on mobile (even though downloading an ISO on Mobile is kinda dumb)
    - If you use a theme from [Templated.co](https://templated.co)/[HTML5 Up](https://html5up.net), or similar, unless you can prove to us you paid for the removal of branding, keep the branding as required by the license. If you need an example of what to do, look at [Arisblu's Official Website](https://arisblu.com), with the default corner credit. Other things can be changed. 
    - Your website must also include either a social media platform like Twitter, Dev.to, Mastodon, Medium.com, Discord, Element.io, Telegram, IRC, etc. so people can get updates and send feedback. 
    - You must have a community edition blog, hosted anywhere as long as:
      - People can comment on posts
      - People can subscribe to posts (following on sites like Medium and Dev.to also count)
      - It is publicly available
      - It is updated AT LEAST bi-monthly
      - Connected to `blog.arisblu(yource).tld` or however your domain looks from the original list.
  - Here are the guidelines to manage a CE:
    - Bigotry of any kind will not be accepted. This includes sexism, racism, xenophobia, homophobia, transphobia, or bullying people based on life choices that don't harm others, political views that don't harm others, or any part of their mental health or personal biology.
    - Harassment of individuals of any form will absolutely not be accepted. Retaliation is frowned upon, but will only get you in mild trouble at most.
    - Keep everything as open-source as you can. 
    - All CE's must have BOTH Libre and Normal editions, as well as the editions for FreeBSD, Illumos, AND Linux. None of these items can be ignored. All six editions (Libre: FreeBSD/Linux/Illumos || Normal: FreeBSD/Linux/Illumos) must be created and distributed. 
    - We will only block Google Drive downloads, all other file hosting providers, given they are unlimited downloads (even if you decide to pay for them) and virus free (Doesn't mean viruses can't be distributed on the platform, just that your ISO won't also bring along some sort of virus along side it). You will need an ISO and Torrent to distribute.
    - Libre editions of your CE must NOT include any form of non-free software.
    - All open-source licenses are accepted, but `GPL 2/3` and `BSD 2/3` are the preferred options. It must be permitted by the Open-Source Initiative, and/or Free Software Foundation.
    - Don't make false claims to advertise your CE. Don't say it is "small" if the install size is 10GB, don't say "fast" if using more than 2GB or RAM. Be honest about your project.

## What is "Open-Enterprise"
Open-Enterprise is the idea of open-source enterprise standards and software. This means the project and all community editions should be expected to be at enterprise standards. We usually keep this to rules and management, and the stability of your OS is more or less up to you. We also have a good amount of say in your community edition. Let's say you use OpenRC, but there is no reason to use it other than opinion, we will try to push (but will not force) the use of Systemd as to allow technologies like SnapCraft, AppImage, Wayland, and other things that may or may not require Systemd. As long as all technologies work, or there is a push against such technologies in either morals or tech, then we will allow it. 

## Legal Disclaimers
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 

NONE OF THE DEVELOPERS OF THIS SOFTWARE ARE RESPONSIBLE OR LIABLE FOR THE ACTIONS OF ANY PERSON/PERSONS WHO CAUSE HARM USING THIS SOFTWARE. WE DO NOT ENDORSE PIRACY, LICENSE VIOLATIONS, OR OTHERWISE ILLEGAL MODIFICATIONS TO SOFTWARE. ANY "COMMUNITY EDITION" (**CE**) WHO BREAKS TRADEMARKS, LAWS, OR ANY OTHER AGREEMENT MUST BE TAKEN UP WITH THE COMMUNITY EDITION CREATOR/TEAM, AND NOT WITH THE TEAM BEHIND ARIS* (AKA ARISANYWHERE) OR THE GROUPS THAT RUN OR ARE ASSOCIATED WITH IT.