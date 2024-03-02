import { Body, Controller, Get, Post } from '@nestjs/common';
import { CreateUserDto } from './dtos/createUser.dto';

@Controller('user')
export class UserController {
  @Post()
  async createUser(
    @Body() createUser: CreateUserDto
  ){
    return {
      ...createUser,
      password: undefined,
    };
  }

  @Get()
  async getAllUser(){
    return JSON.stringify({
      teste: 'abc'
    })
  }


}
