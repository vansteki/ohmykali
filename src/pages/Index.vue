<template>
  <Layout>

    <div class="pt-8 md:pt-16">
      <div class="flex flex-col items-center">
        <div class="flex flex-col items-center mb-2 text-ui-primary">
          <Logo :width="80"/>
          <h2 class="text-3xl text-6xl font-black tracking-tighter border-none">
            Oh My Kali
          </h2>
        </div>
        <h1 class="text-4xl text-center lg:text-5xl">
          Make a Kali Linux live USB like a Boss
        </h1>

        <!-- asciinema -->
        <a href="https://asciinema.org/a/U3G9fBYfc1l6fVm1TQcUtnixD" target="_blank"><img src="https://asciinema.org/a/U3G9fBYfc1l6fVm1TQcUtnixD.svg" /></a>

        <p class="text-xl font-medium text-center">
          🔐 USB Persistence + Encrypted Persistence️
          <br>
          ⚙️ Using Ansible
          <br>
          <strong class="text-ui-primary">Copy the following line and run as root user: 👇</strong>
        </p>

        <!--  Code Block   -->
        <div class="py-4">
          <code class="block px-4 py-1 select-all bg-ui-border text-ui-typo">
            curl -Lo ok git.io/ohmykali-dev && chmod o+x ok && ./ok
          </code>
        </div>

        Or

        <div class="py-4">
          <code class="block px-4 py-1 select-all bg-ui-border text-ui-typo">
            apt install ansible -y
            <br>
            git clone htps://github.com/vansteki/ohmykali
            <br>
            cd ohmykali
            <br>
            cp vars.example.yml vars.yml
            <br>
            ansible-storybook psrt_encrypt.yml
          </code>
        </div>


        <!--   Before you run     -->
        <p>Before you start, you may need to check something:</p>
        <p>1. Prepare a Kali Bootable USB Drive (2021.1 by default), see
          <a class="border-b border-dashed border-ui-primary text-ui-primary"
             href="https://www.kali.org/docs/usb/">
            this article
          </a>
        </p>
        <p>2. You should use <code>fdisk -l</code> to check and find your disk info first.</p>

        <!--   DOC Btn     -->
        <div class="flex justify-center mt-8">
          <g-link
              to="/docs/"
              class="flex items-center px-6 py-4 ml-auto text-2xl font-bold leading-none text-white border rounded-lg shadow-lg bg-ui-primary border-ui-primary transition-all duration-200 ease-out transform hover:shadow-xl hover:-translate-y-1"
          >
            More details
            <ArrowRightCircleIcon class="ml-4" size="1x"/>
          </g-link>
        </div>

        <p class="mt-8 text-center">
          Made with 💛️ by
          <a class="border-b border-dashed border-ui-primary text-ui-primary"
             href="https://github.com/vansteki/ohmykali"
          >
            V
          </a>.
        </p>

        <!--    Ref    -->
        <p class="mt-8 text-center">
          Ref:
          <a href="https://www.kali.org/docs/usb/usb-persistence/"
             class="border-b border-dashed border-ui-primary text-ui-primary">Adding Persistence to a Kali Linux "Live"
            USB Drive | Kali Linux Documentation</a>.
        </p>

      </div>

      <div class="pt-8 mx-auto mt-8 border-t md:mt-16 md:pt-16 border-top border-ui-border max-w-screen-sm"></div>

      <!--  Donation    -->
      <div class="flex flex-wrap justify-center -mx-4">

        <div class="flex flex-col items-center w-full px-4 mb-8 text-center md:w-1/3">
          <CoffeeIcon size="3x" class="mb-6 text-ui-primary"/>
          <h3 class="font-bold tracking-wide uppercase text-ui-primary">
            Donation
          </h3>


          <p class="text-lg text-left">
            If you think my work is helpful for you. you could buy me a coffee or send me some coin. 👀
          </p>

          <p>
            <a href="https://www.buymeacoffee.com/vansteki" target="_blank"><img
                src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" height="41"
                width="174">
            </a>
          </p>

          <p>BTC: 1MWrddwtiuaBp4kFFTJFZ4nM6FeeALPMR4</p>
          <p>ETH(ERC20): 0xd37b360952136bf13c7568a4551bc1fc93f116d5</p>
          <p>ETH(TRC20): TATCbCmh7RLENPfyDdqAjdCHCuJ7R9jger</p>
          <p>USDT: 0xd37b360952136bf13c7568a4551bc1fc93f116d5</p>
          <p>DOGE: D5SffyXYx1c7NJVaKu5vy8ppE5YcRBFR9D</p>

        </div>

      </div>

      <div class="pt-8 mx-auto mt-8 border-t md:mt-16 md:pt-16 border-top border-ui-border max-w-screen-sm"></div>

      <!--  Footer    -->
      <footer>
        <p class="mt-8 text-center">
          Powered by Gridsome.
          Theme: <a class="border-b border-dashed border-ui-primary text-ui-primary"
                    href="https://github.com/mrcrmn/docc">mrcrmn/docc</a>.
          MIT license
        </p>
      </footer>

    </div>
  </Layout>
</template>

<script>
import Logo from '@/components/Logo'
import { ArrowRightCircleIcon, CodeIcon, MoonIcon, SearchIcon, CoffeeIcon, GithubIcon } from 'vue-feather-icons'

export default {
  components: {
    Logo,
    ArrowRightCircleIcon,
    CodeIcon,
    MoonIcon,
    SearchIcon,
    CoffeeIcon,
    GithubIcon
  },

  metaInfo () {
    const title = 'Oh My Kali'
    const description = 'Oh My Kali is an Ansible Playbook that help you create Kali Linux persistence encryption USB.'

    return {
      title: title,
      meta: [
        {
          name: 'description',
          content: description
        },
        {
          key: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          key: 'twitter:title',
          name: 'twitter:title',
          content: title,
        },
        {
          key: 'og:description',
          name: 'og:description',
          content: description,
        },
        {
          key: 'twitter:description',
          name: 'twitter:description',
          content: description,
        },
      ]
    }
  }
}
</script>

<style>
.home-links a {
  margin-right: 1rem;
}
</style>
