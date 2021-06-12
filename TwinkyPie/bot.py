import discord
import random
from discord.ext import commands

client = commands.Bot(command_prefix='!')

@client.event
async def on_ready():
    print("Bot is ready")

@client.command()
async def ping(ctx):
    await ctx.send(f'{round(client.latency * 1000)}ms' )

@client.command()
async def poop(ctx):
    await ctx.send("I have pooped!")

@client.command(aliases = ['coin','flip'])
async def coinflip(ctx):
    sides = ['heads', 'tails']
    await ctx.send(f'{random.choice(sides)}')

@client.command()
async def shoot(ctx, hand):
    stuff = ['rock', 'paper', 'scissors']
    comp = random.choice(stuff)
    if hand == comp:
        await ctx.send(f'{comp}\nIts a tie!')
    if hand == 'rock':
        if comp == 'paper':
            await ctx.send(f'{comp}\nYou loose!')
        elif comp == 'scissors':
            await ctx.send(f'{comp}\nYou win!')
    elif hand == 'paper':
        if comp == 'rock':
            await ctx.send(f'{comp}\nYou win!')
        elif comp == 'scissors':
            await ctx.send(f'{comp}\nYou loose!')
    elif hand == 'scissors':
        if comp == 'rock':
            await ctx.send(f'{comp}\nYou loose!')
        elif comp == 'paper':
            await ctx.send(f'{comp}\nYou win!')

@client.command()
async def clear(ctx, amount=8):
    await ctx.channel.purge(limit=amount)

@client.command()
async def kick(ctx, member : discord.Member, *, reason= None):
    await member.kick(reason=reason)

@client.command()
async def ban(ctx, member : discord.Member, *, reason= None):
    await member.ban(reason=reason)



# last line of code
client.run("")











