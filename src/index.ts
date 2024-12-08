import { registerPlugin } from '@capacitor/core';

import type { XtremePushPlugin } from './definitions';

const XtremePush = registerPlugin<XtremePushPlugin>('XtremePush', {
  web: () => import('./web').then((m) => new m.XtremePushWeb()),
});

export * from './definitions';
export { XtremePush };
