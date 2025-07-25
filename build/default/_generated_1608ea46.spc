
�
�#version 330

layout(std140) uniform vs_uniforms
{
    mat4 view_proj;
} _37;

out vec2 var_texcoord0;
layout(location = 1) in vec2 texcoord0;
out vec4 var_color;
layout(location = 2) in vec4 color;
layout(location = 0) in vec3 position;

void main()
{
    var_texcoord0 = texcoord0;
    var_color = vec4(color.xyz * color.w, color.w);
    gl_Position = _37.view_proj * vec4(position, 1.0);
}

 
�
�#version 330

uniform sampler2D texture_sampler;

layout(location = 0) out vec4 out_fragColor;
in vec2 var_texcoord0;
in vec4 var_color;

void main()
{
    out_fragColor = texture(texture_sampler, var_texcoord0) * var_color;
}


�
�#version 300 es

layout(std140) uniform vs_uniforms
{
    mediump mat4 view_proj;
} _37;

out mediump vec2 var_texcoord0;
layout(location = 1) in mediump vec2 texcoord0;
out mediump vec4 var_color;
layout(location = 2) in mediump vec4 color;
layout(location = 0) in mediump vec3 position;

void main()
{
    var_texcoord0 = texcoord0;
    var_color = vec4(color.xyz * color.w, color.w);
    gl_Position = _37.view_proj * vec4(position, 1.0);
}

 
�
�#version 300 es
precision mediump float;
precision highp int;

uniform mediump sampler2D texture_sampler;

layout(location = 0) out highp vec4 out_fragColor;
in vec2 var_texcoord0;
in vec4 var_color;

void main()
{
    out_fragColor = texture(texture_sampler, var_texcoord0) * var_color;
}


�
�#version 100

struct vs_uniforms
{
    mediump mat4 view_proj;
};

uniform vs_uniforms _37;

varying mediump vec2 var_texcoord0;
attribute mediump vec2 texcoord0;
varying mediump vec4 var_color;
attribute mediump vec4 color;
attribute mediump vec3 position;

void main()
{
    var_texcoord0 = texcoord0;
    var_color = vec4(color.xyz * color.w, color.w);
    gl_Position = _37.view_proj * vec4(position, 1.0);
}

 
�
�#version 100
precision mediump float;
precision highp int;

uniform mediump sampler2D texture_sampler;

varying vec2 var_texcoord0;
varying vec4 var_color;

void main()
{
    gl_FragData[0] = texture2D(texture_sampler, var_texcoord0) * var_color;
}


�
�#version 430

layout(binding = 0, std140) uniform vs_uniforms
{
    mat4 view_proj;
} _37;

layout(location = 0) out vec2 var_texcoord0;
layout(location = 1) in vec2 texcoord0;
layout(location = 1) out vec4 var_color;
layout(location = 2) in vec4 color;
layout(location = 0) in vec3 position;

void main()
{
    var_texcoord0 = texcoord0;
    var_color = vec4(color.xyz * color.w, color.w);
    gl_Position = _37.view_proj * vec4(position, 1.0);
}

 
�
�#version 430

layout(binding = 0) uniform sampler2D texture_sampler;

layout(location = 0) out vec4 out_fragColor;
layout(location = 0) in vec2 var_texcoord0;
layout(location = 1) in vec4 var_color;

void main()
{
    out_fragColor = texture(texture_sampler, var_texcoord0) * var_color;
}


�
�#     4                 GLSL.std.450                      main    	            !   ,        �        main      	   var_texcoord0        texcoord0        var_color        color     !   gl_Position   #   vs_uniforms   #       view_proj     %         ,   position    G  	       G  	          G         G           G         G         G           G         G           G         G         G         G         G         G         G         G          G  !       G  !          G  #      H  #           H  #          H  #             H  #       #       G  %   !       G  %   "       G  *       G  ,       G  ,          G  -       G  /       G  0       G  1       G  2       G  3            !                                        ;     	         
         ;  
                                ;                       ;                                   +                       ;     !        "           #   "      $      #   ;  $   %        &          +  &   '          (      "      +         ;  +   ,      +     .     �?6               �     =           >  	      =           O                        A              =           �              Q               Q              Q              P                     >         A  (   )   %   '   =  "   *   )   =     -   ,   Q     /   -       Q     0   -      Q     1   -      P     2   /   0   1   .   �     3   *   2   >  !   3   �  8   
�
�#                      GLSL.std.450                     main    	                      �        main      	   out_fragColor        texture_sampler      var_texcoord0        var_color   G  	          G         G     !       G     "      G         G         G            G         G         G         G           G         G              !                                        ;     	       	 
                                 
                ;                                   ;                       ;           6               �     =           =           W              =           �              >  	      �  8  �
+
vs_uniforms��������#  %* 0 8 @ PX@D
texture_sampler�랦���
  *texture_sampler0�랦���8@ P"8
positionƫ����ĭ�  ,*position0ƫ����ĭ�8 @ P":
	texcoord0����ۜ���  *	texcoord00����ۜ���8 @P"0
color������X  *color0������X8 @P"@
var_texcoord0�������  *var_texcoord00�������8 @ P":
	var_color����铵��  *	var_color0����铵��8 @P*@
var_texcoord0�������  	*var_texcoord00�������8 @ P*:
	var_color����铵��  *	var_color0����铵��8 @P*B
out_fragColor�������  	*out_fragColor0�������8 @ P28
vs_uniforms��������#
	view_proj���̤�	  ( 