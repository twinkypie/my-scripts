const Discord = require('discord.js');

const client = new Discord.Client();

const prefix = '!';

const fs = require('fs');

client.commands = new Discord.Collection();

const commandFiles = fs.readdirSync('./commands/').filter(fiel => file.endsWith('.js'));
for(const file of commandFiles){
   const command = require('./commands/${file}');
   
   client.commands.set(command.name, command);
}

client.once('ready', () => {
   console.log('TwinkyBot is online!');
});

client.on('message', message => {
   if(!message.content.startsWith(prefix) || message.author.bot) return;

   const args = message.content.slice(prefix.length).split(/ +/);
   const command = args.shift().toLowerCase();

   if(command == 'ping'){
      message.channel.send('pong!');
   } else if (command == 'youtube' ){
      message.channel.send('https://www.youtube.com')
   }
});



//Last line of the file
client.login('ODI2OTI1MDU5MjQyNTkwMjQ5.YGTj-Q.paCYyt8uh0ii8ffMspI478QizQk');
