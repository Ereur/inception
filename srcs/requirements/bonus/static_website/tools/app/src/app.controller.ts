import { Controller, Get, Res} from '@nestjs/common';
import { Response } from 'express';
import { AppService } from './app.service';
import * as path from 'path';
import * as express from 'express';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(@Res() res: Response): void {
    res.sendFile( '/static/index.html');
    // retunr an html file
  };

  @Get('/home')
  getHome(@Res() res: Response): void {
    res.sendFile( '/static/home.css');
    // retunr an html file
  };

  @Get('/style')
  getAbout(@Res() res: Response): void {
    res.sendFile( '/static/style.css');
    // retunr an html file
  };

  @Get('/twitter')
  getTwitter(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/twitter.svg');
    // retunr an html file
  };


  @Get('/discord')
  getDiscord(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/discord.svg');
    // retunr an html file
  };

  @Get('/arrow-2')
  getArrow2(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/arrow-2.svg');
    // retunr an html file
  };

  @Get('/arrow')
  getArrow(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/arrow.svg');
    // retunr an html file
  };

  @Get('/avatar')
  getAvatar(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/avatar.svg');
    // retunr an html file
  };

  @Get('/character-1')
  getCharacter1(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-1.svg');
    // retunr an html file
  };

  @Get('/character-2')
  getCharacter2(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-2.svg');
    // retunr an html file
  };

  @Get('/character-3')
  getCharacter3(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-3.svg');
    // retunr an html file
  };

  @Get('/character-4')
  getCharacter4(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-4.svg');
    // retunr an html file
  };

  @Get('/character-5')

  getCharacter5(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-5.svg');
    // retunr an html file
  };

  @Get('/character-6')
  getCharacter6(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-6.svg');
    // retunr an html file
  };

  @Get('/character-7')
  getCharacter7(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-7.svg');
    // retunr an html file
  };

  @Get('/character-8')
  getCharacter8(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-8.svg');
    // retunr an html file
  };

  @Get('/character-9')
  getCharacter9(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-9.svg');
    // retunr an html file
  };

  @Get('/character-10')
  getCharacter10(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/character-10.svg');
    // retunr an html file
  };

  @Get('/checklist')
  getChecklist(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/checklist.svg');
    // retunr an html file
  };

  @Get('/hero-divider-1500w')
  getHeroDivider1500w(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/hero-divider-1500w.png');
    // retunr an html file
  };

  @Get('/default-avatar')
  getDefaultAvatar(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/default-avatar.svg');
    // retunr an html file
  };

  @Get('/light-avatar')
  getLightAvatar(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/light-avatar.svg');
    // retunr an html file
  };

  @Get('/group%202262')
  getGroup2262(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/group 2262.svg');
    // retunr an html file
  };

  @Get('/group%202415')
  getGroup2415(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/group 2415.svg');
    // retunr an html file
  };
  
  
  @Get('/group%202422')
  getGroup2422(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/group 2422.svg');
    // retunr an html file
  }

  @Get('/group%202273')
  getGroup2273(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/hero-divider-1500w.png');
    // retunr an html file
  };

  @Get('/people')
  getPeople(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/people.svg');
    // retunr an html file
  }

  @Get('/paper')
  getPaper(@Res() res: Response): void {
    res.sendFile( '/static/public/playground_assets/paper.svg');
    // retunr an html file
  }



}
