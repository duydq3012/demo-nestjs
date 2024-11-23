import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  async getHello (): Promise<string> {
    await sleep(1000)
    return 'Hello World!';
  }
}

function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}