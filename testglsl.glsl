#version 330
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform uint test = 0u;

uint test1 = 22545u;

vec4 _Z13create_vectorILi541EEDv4_fv()
{
    return vec4(541.0);
}

void main()
{
    vec4 _39 = gl_Position;
    _39.x = gl_Position.x + ((dot(_Z13create_vectorILi541EEDv4_fv(), vec4(4.0, 5.0, 6.0, 7.0)) + float(test1)) + float(2345u + test1));
    gl_Position = _39;
}

