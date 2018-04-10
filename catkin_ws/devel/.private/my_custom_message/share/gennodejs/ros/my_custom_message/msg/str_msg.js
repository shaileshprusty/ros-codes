// Auto-generated. Do not edit!

// (in-package my_custom_message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class str_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type str_msg
    // Serialize message field [str]
    bufferOffset = std_msgs.msg.String.serialize(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type str_msg
    let len;
    let data = new str_msg(null);
    // Deserialize message field [str]
    data.str = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.str);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_custom_message/str_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32224c1636e75e68745b61629dfa07c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String str
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new str_msg(null);
    if (msg.str !== undefined) {
      resolved.str = std_msgs.msg.String.Resolve(msg.str)
    }
    else {
      resolved.str = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = str_msg;
