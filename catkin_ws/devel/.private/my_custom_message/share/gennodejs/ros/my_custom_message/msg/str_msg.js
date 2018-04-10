// Auto-generated. Do not edit!

// (in-package my_custom_message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class str_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strg = null;
    }
    else {
      if (initObj.hasOwnProperty('strg')) {
        this.strg = initObj.strg
      }
      else {
        this.strg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type str_msg
    // Serialize message field [strg]
    bufferOffset = _serializer.string(obj.strg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type str_msg
    let len;
    let data = new str_msg(null);
    // Deserialize message field [strg]
    data.strg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strg.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_custom_message/str_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7320de471be605ad0f1e7c7af079792f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string strg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new str_msg(null);
    if (msg.strg !== undefined) {
      resolved.strg = msg.strg;
    }
    else {
      resolved.strg = ''
    }

    return resolved;
    }
};

module.exports = str_msg;
