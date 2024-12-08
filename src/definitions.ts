export interface XtremePushPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
