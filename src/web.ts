import { WebPlugin } from '@capacitor/core';

import type { DynamicIslandPlugin } from './definitions';

export class DynamicIslandWeb extends WebPlugin implements DynamicIslandPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async greet(options: { name?: string }): Promise<{ greeting: string }> {
    const name = options.name || 'World';
    console.log('GREET', name);
    return { greeting: `Hello, ${name}!` };
  }
}
