# Description:
#   Bot interface for BitTradeOne USB infrared remotecontroller ADVANCE kit.
#
# Dependencies:
#   child_process
#
# Configuration:
#   None
#
# Commands:
#   hubot aircon|エアコン off: send aircon_off code in ir_codes.json.
#   hubot aircon|エアコン on: send aircon_on code in ir_codes.json.
#   hubot light|電気 off: send light_off code in ir_codes.json.
#   hubot light|電気 on: send light_on code in ir_codes.json.
#   hubot light|電気 night: send light_night code in ir_codes.json.
#   hubot tv|テレビ: tv power toggle.
#
# Author:
#   Drunkar <drunkars.p@gmail.com>
#

child_process = require "child_process"
codes = require "./ir_codes.json"

CODE_PREFIX = "/opt/bto_ir_advanced_cmd/bto_advanced_USBIR_cmd -d "

module.exports = (robot) ->
  robot.respond /(aircon|エアコン) off/i, (msg) ->
    code = codes.aircon_off
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Stop air-conditioning."
      msg.send message


  robot.respond /(aircon|エアコン) on/i, (msg) ->
    code = codes.aircon_on
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Start air-conditioning."
      msg.send message


  robot.respond /(light|電気) off/i, (msg) ->
    code = codes.light_off
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Turn off the light."
      msg.send message


  robot.respond /(light|電気) on/i, (msg) ->
    code = codes.light_on
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Turn on the light."
      msg.send message


  robot.respond /(light|電気) night/i, (msg) ->
    code = codes.light_night
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Turn the light to night mode."
      msg.send message


  robot.respond /(tv|テレビ)$/i, (msg) ->
    code = codes.tv_power
    message = ""
    child_process.exec CODE_PREFIX + code, (err, stdout, stderr) ->
      if err
        message = "Error: Something was wrong!"
      else
        message = "Power tv."
      msg.send message