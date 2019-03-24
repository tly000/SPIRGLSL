#version 330
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform uint test = 77u;

uint test1 = 22545u;

vec2 _43;
vec4 _47;

vec4 _Z13create_vectorILi541EEDv4_fv()
{
    return vec4(541.0);
}

void main()
{
    vec2 _44 = _43;
    _44.x = (dot(_Z13create_vectorILi541EEDv4_fv(), vec4(4.0, 5.0, 6.0, 7.0)) + float(test1)) + float(2345u + test1);
    vec4 _51 = (gl_Position.xy + _44.xx).xyxx;
    gl_Position = vec4(_51.x, _51.y, gl_Position.z, gl_Position.w);
}

