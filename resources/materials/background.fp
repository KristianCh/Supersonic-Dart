varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;
uniform highp vec4 anim;

void main()
{
	float dt = anim.x;
	vec4 shaded = tint;

	vec2 uv0 = var_texcoord0.xy;

	shaded.x = 0.5 + cos((uv0.x - 0.5) * dt) * 0.3;
	shaded.y = 0.5 + sin((uv0.x - 0.5) * dt) * 0.3;
	shaded.z = 0.5 + atan((uv0.x - 0.5) * dt) * cos(uv0.x * dt) * 0.3;

	lowp vec4 tint_pm = vec4(shaded.xyz * shaded.w, shaded.w);
	gl_FragColor = texture2D(DIFFUSE_TEXTURE, uv0.xy) * tint_pm;
}
