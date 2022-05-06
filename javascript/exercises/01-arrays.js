/*

Generate multiple arrays based on property os object

-- input

[
  { lang: 'en', name: 'foo' },
  { lang: 'en', name: 'fiz' },
  { lang: 'es', name: 'bar' },
  { lang: 'jp', name: 'span' },
  { lang: 'jp', name: 'buzz' },
  { lang: 'jp', name: 'ell' },
]

-- output

[
  {
    en: [
      { name: 'foo' },
      { name: 'fiz' }
    ],
    es: [
      { name: 'bar' }
    ],
    jp: [
      { name: 'span' },
      { name: 'buzz' },
      { name: 'ell' },
    ]
  }
]

*/

const arr = [
  { lang: "en", name: "foo" },
  { lang: "en", name: "fiz" },
  { lang: "es", name: "bar" },
  { lang: "jp", name: "span" },
  { lang: "jp", name: "buzz" },
  { lang: "jp", name: "ell" },
];

function newArr(elements) {
  let keys = new Set();
  let newElements = [];

  elements.map((element) => {
    keys.add(element.lang);
  });

  [...keys].forEach((key) => {
    const result = elements.filter((element) => element.lang === key);

    newElements.push({
      [key]: result,
    });
  });

  return newElements;
}

console.log(newArr(arr));
