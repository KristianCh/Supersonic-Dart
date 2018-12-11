varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;
uniform highp vec4 anim;
uniform lowp vec4 values;

void main()
{
    float dt = anim.x;
    float x_spd = values.x;
    float y_spd = values.y;
    float x_mag = values.z;
    float y_mag = values.w;
    vec4 shaded = tint;

    vec2 uv0 = var_texcoord0.xy;
    uv0.y += sin((uv0.x + dt) * x_spd) * x_mag;
    uv0.x += sin((uv0.y + dt) * y_spd) * y_mag;
    shaded.xyz -= -sin((uv0.x + dt - 0.25) * x_spd) * x_mag * 7.5;
    shaded.xyz -= -sin((uv0.y + dt - 0.25) * y_spd) * y_mag * 7.5;
    
    lowp vec4 tint_pm = vec4(shaded.xyz * shaded.w, shaded.w);
    gl_FragColor = texture2D(DIFFUSE_TEXTURE, uv0.xy) * tint_pm;
}
