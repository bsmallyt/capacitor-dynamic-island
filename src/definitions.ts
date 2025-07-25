export interface DynamicIslandPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  greet(options: { name?: string }): Promise<{ greeting: string }>;
}
