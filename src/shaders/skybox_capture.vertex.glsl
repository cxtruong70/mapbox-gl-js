attribute highp vec3 a_pos_3f;

uniform mat3 u_matrix_3f;

varying highp vec3 v_position;

float map(float value, float start, float end, float new_start, float new_end) {
    return ((value - start) * (new_end - new_start)) / (end - start) + new_start;
}

void main() {
    vec4 pos = vec4(u_matrix_3f * a_pos_3f, 1.0);

    v_position = pos.xyz;
    v_position.y *= -1.0;

    gl_Position = vec4(a_pos_3f.xy, 0.0, 1.0);
}
