@keyframes moveInLeft {
  0% {
    opacity: 0;
    transform: translateX(-100px); }
  80% {
    transform: translateX(10px); }
  100% {
    opacity: 1;
    transform: translate(0); } }
@keyframes moveInRight {
  0% {
    opacity: 0;
    transform: translateX(100px); }
  80% {
    transform: translateX(-10px); }
  100% {
    opacity: 1;
    transform: translate(0); } }
@keyframes moveInBottom {
  0% {
    opacity: 0;
    transform: translateY(30px); }
  100% {
    opacity: 1;
    transform: translate(0); } }
*,
*::after,
*::before {
  margin: 0;
  padding: 0;
  box-sizing: inherit; }

html {
  font-size: 62.5%;
  /* dividimos 10px / 16px = 0.625px . Assim podemos utilizar 0.625 * 'qualquer valor' em pixel para tormar a nossa fonte em 'rem'*/ }

body {
  box-sizing: border-box; }

body {
  font-family: "Lato", sans-serif;
  font-weight: 400;
  /*font-size: 16px;*/
  line-height: 1.7;
  color: #777;
  padding: 3rem; }

.heading-primary {
  color: #fff;
  text-transform: uppercase;
  backface-visibility: hidden;
  margin-bottom: 6rem; }
  .heading-primary--main {
    display: block;
    font-size: 6rem;
    font-weight: 400;
    letter-spacing: 3.5rem;
    animation-name: moveInLeft;
    animation-duration: 1s;
    animation-timing-function: ease-out;
    /*
      animation-delay: 3s;
      animation-interation-count: 3;
      */ }
  .heading-primary--sub {
    display: block;
    font-size: 2rem;
    font-weight: 700;
    letter-spacing: 1.75rem;
    animation: moveInRight 1s ease-out; }

.heading-secondary {
  font-size: 3.5rem;
  text-transform: uppercase;
  font-size: 700;
  display: inline-block;
  background-image: linear-gradient(to right, #7ed56f, #28b485);
  -webkit-background-clip: text;
  color: transparent;
  letter-spacing: 0.2rem;
  transition: all 0.2s; }
  .heading-secondary:hover {
    transform: skewY(2deg) skewX(15deg) scale(1.1);
    text-shadow: 0.5rem 1rem 2rem rgba(0, 0, 0, 0.2); }

.heading-tertiary {
  font-size: 1.6rem;
  font-weight: 700;
  text-transform: uppercase; }

.paragraph {
  font-size: 1.6rem; }
  .paragraph:not(:last-child) {
    margin-bottom: 3rem; }

.u-center-text {
  text-align: center; }

.u-margin-bottom-small {
  margin-bottom: 1.5rem; }

.u-margin-bottom-medium {
  margin-bottom: 4rem; }

.u-margin-bottom-big {
  margin-bottom: 8rem; }

.u-margin-top-big {
  margin-top: 8rem; }

.card {
  perspective: 150rem;
  -moz-perspective: 150rem;
  position: relative;
  height: 52rem; }
  .card__side {
    height: 52rem;
    transition: all 0.8s ease;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    backface-visibility: hidden;
    border-radius: 3px;
    overflow: hidden;
    box-shadow: 0 1.5rem 4rem rgba(0, 0, 0, 0.15); }
    .card__side--front {
      background-color: #fff; }
    .card__side--back {
      transform: rotateY(180deg); }
      .card__side--back-1 {
        background-image: linear-gradient(to right bottom, #ffb900, #ff7730); }
      .card__side--back-2 {
        background-image: linear-gradient(to right bottom, #7ed56f, #28b485); }
      .card__side--back-3 {
        background-image: linear-gradient(to right bottom, #2998ff, #5643fa); }
  .card:hover .card__side--front {
    transform: rotateY(-180deg); }
  .card:hover .card__side--back {
    transform: rotateY(0); }
  .card__picture {
    background-size: cover;
    height: 23rem;
    background-blend-mode: screen;
    clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%); }
    .card__picture--1 {
      background-image: linear-gradient(to right bottom, #ffb900, #ff7730), url(../img/nat-5.jpg); }
    .card__picture--2 {
      background-image: linear-gradient(to right bottom, #7ed56f, #28b485), url(../img/nat-6.jpg); }
    .card__picture--3 {
      background-image: linear-gradient(to right bottom, #2998ff, #5643fa), url(../img/nat-7.jpg); }
  .card__heading {
    font-size: 2.8rem;
    font-weight: 300;
    text-transform: uppercase;
    text-align: right;
    color: #fff;
    position: absolute;
    top: 12rem;
    right: 2rem;
    width: 75%; }
  .card__heading-span {
    padding: 1rem 1.5rem;
    box-decoration-break: clone; }
    .card__heading-span--1 {
      background-image: linear-gradient(to right bottom, rgba(255, 185, 0, 0.85), rgba(255, 119, 48, 0.85)); }
    .card__heading-span--2 {
      background-image: linear-gradient(to right bottom, rgba(126, 213, 111, 0.85), rgba(40, 180, 133, 0.85)); }
    .card__heading-span--3 {
      background-image: linear-gradient(to right bottom, rgba(41, 152, 255, 0.85), rgba(86, 67, 250, 0.85)); }
  .card__details {
    padding: 3rem; }
    .card__details ul {
      list-style: none;
      width: 80%;
      margin: 0 auto; }
      .card__details ul li {
        text-align: center;
        font-size: 1.5rem;
        padding: 1rem; }
        .card__details ul li:not(:last-child) {
          border-bottom: 1px solid #eee; }
  .card__cta {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 90%;
    text-align: center; }
  .card__price-box {
    text-align: center;
    color: #fff;
    margin-bottom: 8rem; }
  .card__price-only {
    font-size: 1.4rem;
    text-transform: uppercase; }
  .card__price-value {
    font-size: 6rem;
    font-weight: 100; }

.composition {
  position: relative; }
  .composition__photo {
    width: 55%;
    box-shadow: 0 1.5rem 4rem rgba(0, 0, 0, 0.4);
    border-radius: 2px;
    position: absolute;
    z-index: 10;
    transition: all 0.2s;
    outline-offset: 2rem; }
    .composition__photo--p1 {
      left: 0;
      top: -2rem; }
    .composition__photo--p2 {
      right: 0;
      top: 2rem; }
    .composition__photo--p3 {
      left: 20%;
      top: 10rem; }
    .composition__photo:hover {
      outline: 1.5rem solid #55c57a;
      transform: scale(1.05) translateY(-0.5rem);
      box-shadow: 0 2.5rem 4rem rgba(0, 0, 0, 0.5);
      z-index: 20; }
  .composition:hover .composition__photo:not(:hover) {
    transform: scale(0.95); }

.feature-box {
  background-color: rgba(255, 255, 255, 0.8);
  font-size: 1.5rem;
  padding: 2.5rem;
  text-align: center;
  border-radius: 3px;
  box-shadow: 0 1.5rem 4rem rgba(0, 0, 0, 0.15);
  transition: transform 0.3s; }
  .feature-box__icon {
    font-size: 6rem;
    margin-bottom: 0.5rem;
    display: inline-block;
    background-image: linear-gradient(to right, #7ed56f, #28b485);
    -webkit-background-clip: text;
    color: transparent; }
  .feature-box:hover {
    transform: translateY(-1.5rem) scale(1.03); }

.row {
  max-width: 114rem;
  margin: 0 auto; }
  .row:not(:last-child) {
    margin-bottom: 8rem; }
  .row::after {
    content: "";
    display: table;
    clear: both; }
  .row [class^="col-"] {
    float: left; }
    .row [class^="col-"]:not(:last-child) {
      margin-right: 6rem; }
  .row .col-1-of-2 {
    width: calc((100% - 6rem) / 2); }
  .row .col-1-of-3 {
    width: calc((100% - 2 * 6rem) / 3); }
  .row .col-2-of-3 {
    width: calc( 2 * ((100% - 2 * 6rem) / 3) + 6rem ); }
  .row .col-1-of-4 {
    width: calc((100% - 3 * 6rem) / 4); }
  .row .col-2-of-4 {
    width: calc( 2 * ((100% - 3 * 6rem) / 4) + 6rem ); }
  .row .col-3-of-4 {
    width: calc( 3 * ((100% - 3 * 6rem) / 4) + (2 *6rem) ); }

.header {
  height: 95vh;
  background-image: linear-gradient(to right bottom, rgba(126, 213, 111, 0.8), rgba(40, 180, 133, 0.8)), url(../img/hero.jpg);
  background-size: cover;
  background-position: top;
  clip-path: polygon(0 0, 100% 0, 100% 75vh, 0 100%); }
  .header__logo-box {
    position: absolute;
    top: 4rem;
    left: 4rem; }
  .header__logo {
    height: 3.5rem; }
  .header__text-box {
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center; }

.section-about {
  background-color: #f7f7f7;
  padding: 25rem 0;
  margin-top: -20vh; }

.section-features {
  padding: 20rem 0;
  background-image: linear-gradient(to right bottom, rgba(126, 213, 111, 0.8), rgba(40, 180, 133, 0.8)), url(../img/nat-4.jpg);
  background-size: cover;
  margin-top: -10rem;
  transform: skewY(-7deg); }
  .section-features > * {
    transform: skewY(7deg); }

.section-tours {
  background-color: #f7f7f7;
  padding: 25rem 0 50rem 0;
  margin-top: -10rem; }

/*# sourceMappingURL=style.com.map */
