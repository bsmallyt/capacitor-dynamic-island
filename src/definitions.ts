export interface DynamicIslandPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
