# Rails locales to JS

## Installation

```
gem 'locale_to_js'
```

## Utilisation

```
bundle exec rake locale_to_js:compile
```

## Utilisation avec react-intl

Dans un fichier TranslationProvider.tsx

```
import React from 'react';
import { IntlProvider } from 'react-intl';
// Path vers le fichier translations a modifier
import { translations } from '../../lang/translations';
import { defaultLocale } from '../../lang/default';

const TranslationProvider = (props: any) => {
  let locale = "en";
  // locale = document.querySelector('meta[name="current-locale"]')
  // locale = props.user.locale
  const messages = translations[locale || defaultLocale]

  return (
    <IntlProvider
      locale={locale}
      key={locale}
      messages={messages} defaultLocale={defaultLocale || 'en'}
    >
      {props.children}
    </IntlProvider>
  )
};


export default TranslationProvider;
```

```
<TranslationProvider 
  // Prop (eg: user, locale)
>
  {children}
</TranslationProvider>
```

Credit: [React On Rails](https://github.com/shakacode/react_on_rails)