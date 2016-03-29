#version 400 core

uniform mat4 vw_matrix;
uniform mat4 pr_matrix;
uniform mat4 ml_matrix = mat4(1.0);

layout (location = 0) in vec4 position;
layout (location = 1) in vec2 tc;
layout (location = 2) in vec4 campos;

out DATA
{
    vec2 tc;
} cs_out;


void main(void){
    gl_Position = pr_matrix * ml_matrix * position;
    cs_out.tc = tc;
}