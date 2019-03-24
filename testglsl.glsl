#version 330
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

struct struct_Test
{
    float _m0;
    float _m1;
    float _m2;
};

uniform uint test = 0u;

uint test1 = 22545u;
struct_Test testStruct = struct_Test(0.0, 0.0, 0.0);

vec4 _Z13create_vectorILi541EEDv4_fv()
{
    return vec4(541.0);
}

void main()
{
    vec4 _43 = gl_Position;
    _43.x = gl_Position.x + ((dot(_Z13create_vectorILi541EEDv4_fv(), vec4(4.0, 5.0, 6.0, 7.0)) + float(test1)) + float(2345u + test1));
    gl_Position = _43;
}

