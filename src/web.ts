import { WebPlugin } from '@capacitor/core';

import type { XtremePushPlugin } from './definitions';

export class XtremePushWeb extends WebPlugin implements XtremePushPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
