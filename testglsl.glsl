#version 330
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform uint test = 0u;

vec4 _Z13create_vectorILi541EEDv4_fv()
{
    return vec4(541.0);
}

vec4 _Z13create_vectorILi661EEDv4_fv()
{
    return vec4(661.0);
}

void main()
{
    vec4 _25 = gl_Position;
    _25.x = gl_Position.x + dot(_Z13create_vectorILi541EEDv4_fv(), _Z13create_vectorILi661EEDv4_fv());
    gl_Position = _25;
}

