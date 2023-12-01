/**
* 滤镜渲染顶点着色程序
* Created by wgs on 2022/3/23.
*/

uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
uniform float u_PointSize;
attribute vec3 aPosition;
attribute vec2 aTexCoord;
varying vec2 vTexCoord;

void main()
{
    gl_Position = uMVPMatrix * vec4(aPosition,1);
    vTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st;
    gl_PointSize = u_PointSize;
}


