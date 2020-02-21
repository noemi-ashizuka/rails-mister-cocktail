import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["How do I make Mojito?", "Learn to mix", "Mix cocktails like a pro", "Show your creations"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
