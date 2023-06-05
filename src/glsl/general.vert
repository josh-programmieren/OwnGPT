precision mediump float;

uniform float u_zoom_balance;
uniform float u_tile_id;
uniform float u_update_time;
uniform float u_transition_duration;

// Type of jitter.
uniform float u_jitter;
uniform float u_last_jitter;


// Whether to plot only a single category.
uniform float u_only_color;
uniform float u_grid_mode;

uniform vec3 u_filter_numeric; // An override for simple numeric operations.
uniform vec3 u_last_filter_numeric; // An override for simple numeric operations.

uniform vec3 u_filter2_numeric; // An override for simple numeric operations.
uniform vec3 u_last_filter2_numeric; // An override for simple numeric operations.

uniform vec3 u_foreground_numeric; // An override for simple numeric operations.
uniform vec3 u_last_foreground_numeric; // An override for simple numeric operations.


// Transform from data space to the open window.
uniform mat3 u_window_scale;
uniform mat3 u_last_window_scale;
// Transform from the open window to the d3-zoom.
uniform mat3 u_zoom;

uniform float u_width;
uniform float u_height;
uniform float u_use_glyphset;
varying vec2 letter_pos; // store which letter to use.

uniform float u_maxix;           // The maximum index to plot.
uniform float u_time;            // The current time.
uniform float u_k;               // The d3-scale factor.
uniform float u_color_picker_mode;
uniform float u_base_size;
uniform float u_alpha;
uniform float u_foreground_number; // -1 -- everything is foreground; 0 -- background; 1 -- foreground.
uniform vec4 u_background_rgba;
uniform float u_foreground_alpha;
uniform float u_background_mouseover;
uniform float u_foreground_size;
uniform float u_background_size;

uniform sampler2D u_one_d_aesthetic_map;
uniform sampler2D u_color_aesthetic_map;

// The same set of items for a variety of aesthetics.

// whether to continuously interpolate between
// x0 and x, y0 and y.
uniform float u_position_interpolation_mode;


float a_color;
float a_last_color;

uniform float u_color_buffer_num;
uniform float u_last_color_buffer_num;

uniform vec3 u_color_constant;
uniform vec3 u_last_color_constant;

uniform float u_color_transform;
uniform float u_last_color_transform;
uniform vec2 u_color_domain;
uniform vec2 u_last_color_domain;
uniform float u_last_color_map_position;
uniform float u_color_map_position;

bool a_color_is_constant;
bool a_last_color_is_constant;


/*
python code to generate what follows.
def autogenerate_code():
  ks = ["x", "y", "jitter_radius", "jitter_speed", "size", "filter", "filter2", "x0", "y0", "foreground"]
  times = ["", "last_"]
  print("""
  //  BEGIN AUTOGENERATED. DO NOT EDIT. 
  // ------------------------------------------------    
  """)
  for k in ks:
    for time in times:
      timek = time + k
      print(f"""
  uniform float u_{timek}_buffer_num;
  uniform float u_{timek}_constant;
  uniform float u_{timek}_transform;
  uniform vec2 u_{timek}_domain;
  uniform vec2 u_{timek}_range;
  uniform float u_{timek}_map_position;
  float a_{timek};
  bool a_{timek}_is_constant;
      """)
  for i in range(0, 16):
    print(f"attribute float buffer_{i};")
  for k in ks:
    for time in times:
      timek = time + k
      print(f"""
    if (u_{timek}_buffer_num > -0.5) {{
      a_{timek} = get_buffer(u_{timek}_buffer_num);
      a_{timek}_is_constant = false;
    }} else {{
      a_{timek} = u_{timek}_constant;
      a_{timek}_is_constant = true;
    }}""")
  print("""
//  END AUTOGENERATED. DO NOT EDIT ABOVE. 
// ------------------------------------------------    
  """)

autogenerate_code()
*/

  //  BEGIN AUTOGENERATED. DO NOT EDIT. 
  // ------------------------------------------------    
  

  uniform float u_x_buffer_num;
  uniform float u_x_constant;
  uniform float u_x_transform;
  uniform vec2 u_x_domain;
  uniform vec2 u_x_range;
  uniform float u_x_map_position;
  float a_x;
  bool a_x_is_constant;
      

  uniform float u_last_x_buffer_num;
  uniform float u_last_x_constant;
  uniform float u_last_x_transform;
  uniform vec2 u_last_x_domain;
  uniform vec2 u_last_x_range;
  uniform float u_last_x_map_position;
  float a_last_x;
  bool a_last_x_is_constant;
      

  uniform float u_y_buffer_num;
  uniform float u_y_constant;
  uniform float u_y_transform;
  uniform vec2 u_y_domain;
  uniform vec2 u_y_range;
  uniform float u_y_map_position;
  float a_y;
  bool a_y_is_constant;
      

  uniform float u_last_y_buffer_num;
  uniform float u_last_y_constant;
  uniform float u_last_y_transform;
  uniform vec2 u_last_y_domain;
  uniform vec2 u_last_y_range;
  uniform float u_last_y_map_position;
  float a_last_y;
  bool a_last_y_is_constant;
      

  uniform float u_jitter_radius_buffer_num;
  uniform float u_jitter_radius_constant;
  uniform float u_jitter_radius_transform;
  uniform vec2 u_jitter_radius_domain;
  uniform vec2 u_jitter_radius_range;
  uniform float u_jitter_radius_map_position;
  float a_jitter_radius;
  bool a_jitter_radius_is_constant;
      

  uniform float u_last_jitter_radius_buffer_num;
  uniform float u_last_jitter_radius_constant;
  uniform float u_last_jitter_radius_transform;
  uniform vec2 u_last_jitter_radius_domain;
  uniform vec2 u_last_jitter_radius_range;
  uniform float u_last_jitter_radius_map_position;
  float a_last_jitter_radius;
  bool a_last_jitter_radius_is_constant;
      

  uniform float u_jitter_speed_buffer_num;
  uniform float u_jitter_speed_constant;
  uniform float u_jitter_speed_transform;
  uniform vec2 u_jitter_speed_domain;
  uniform vec2 u_jitter_speed_range;
  uniform float u_jitter_speed_map_position;
  float a_jitter_speed;
  bool a_jitter_speed_is_constant;
      

  uniform float u_last_jitter_speed_buffer_num;
  uniform float u_last_jitter_speed_constant;
  uniform float u_last_jitter_speed_transform;
  uniform vec2 u_last_jitter_speed_domain;
  uniform vec2 u_last_jitter_speed_range;
  uniform float u_last_jitter_speed_map_position;
  float a_last_jitter_speed;
  bool a_last_jitter_speed_is_constant;
      

  uniform float u_size_buffer_num;
  uniform float u_size_constant;
  uniform float u_size_transform;
  uniform vec2 u_size_domain;
  uniform vec2 u_size_range;
  uniform float u_size_map_position;
  float a_size;
  bool a_size_is_constant;
      

  uniform float u_last_size_buffer_num;
  uniform float u_last_size_constant;
  uniform float u_last_size_transform;
  uniform vec2 u_last_size_domain;
  uniform vec2 u_last_size_range;
  uniform float u_last_size_map_position;
  float a_last_size;
  bool a_last_size_is_constant;
      

  uniform float u_filter_buffer_num;
  uniform float u_filter_constant;
  uniform float u_filter_transform;
  uniform vec2 u_filter_domain;
  uniform vec2 u_filter_range;
  uniform float u_filter_map_position;
  float a_filter;
  bool a_filter_is_constant;
      

  uniform float u_last_filter_buffer_num;
  uniform float u_last_filter_constant;
  uniform float u_last_filter_transform;
  uniform vec2 u_last_filter_domain;
  uniform vec2 u_last_filter_range;
  uniform float u_last_filter_map_position;
  float a_last_filter;
  bool a_last_filter_is_constant;
      

  uniform float u_filter2_buffer_num;
  uniform float u_filter2_constant;
  uniform float u_filter2_transform;
  uniform vec2 u_filter2_domain;
  uniform vec2 u_filter2_range;
  uniform float u_filter2_map_position;
  float a_filter2;
  bool a_filter2_is_constant;
      

  uniform float u_last_filter2_buffer_num;
  uniform float u_last_filter2_constant;
  uniform float u_last_filter2_transform;
  uniform vec2 u_last_filter2_domain;
  uniform vec2 u_last_filter2_range;
  uniform float u_last_filter2_map_position;
  float a_last_filter2;
  bool a_last_filter2_is_constant;
      

  uniform float u_x0_buffer_num;
  uniform float u_x0_constant;
  uniform float u_x0_transform;
  uniform vec2 u_x0_domain;
  uniform vec2 u_x0_range;
  uniform float u_x0_map_position;
  float a_x0;
  bool a_x0_is_constant;
      

  uniform float u_last_x0_buffer_num;
  uniform float u_last_x0_constant;
  uniform float u_last_x0_transform;
  uniform vec2 u_last_x0_domain;
  uniform vec2 u_last_x0_range;
  uniform float u_last_x0_map_position;
  float a_last_x0;
  bool a_last_x0_is_constant;
      

  uniform float u_y0_buffer_num;
  uniform float u_y0_constant;
  uniform float u_y0_transform;
  uniform vec2 u_y0_domain;
  uniform vec2 u_y0_range;
  uniform float u_y0_map_position;
  float a_y0;
  bool a_y0_is_constant;
      

  uniform float u_last_y0_buffer_num;
  uniform float u_last_y0_constant;
  uniform float u_last_y0_transform;
  uniform vec2 u_last_y0_domain;
  uniform vec2 u_last_y0_range;
  uniform float u_last_y0_map_position;
  float a_last_y0;
  bool a_last_y0_is_constant;
      

  uniform float u_foreground_buffer_num;
  uniform float u_foreground_constant;
  uniform float u_foreground_transform;
  uniform vec2 u_foreground_domain;
  uniform vec2 u_foreground_range;
  uniform float u_foreground_map_position;
  float a_foreground;
  bool a_foreground_is_constant;
      

  uniform float u_last_foreground_buffer_num;
  uniform float u_last_foreground_constant;
  uniform float u_last_foreground_transform;
  uniform vec2 u_last_foreground_domain;
  uniform vec2 u_last_foreground_range;
  uniform float u_last_foreground_map_position;
  float a_last_foreground;
  bool a_last_foreground_is_constant;
      
attribute float buffer_0;
attribute float buffer_1;
attribute float buffer_2;
attribute float buffer_3;
attribute float buffer_4;
attribute float buffer_5;
attribute float buffer_6;
attribute float buffer_7;
attribute float buffer_8;
attribute float buffer_9;
attribute float buffer_10;
attribute float buffer_11;
attribute float buffer_12;
attribute float buffer_13;
attribute float buffer_14;
attribute float buffer_15;

//  END AUTOGENERATED. DO NOT EDIT ABOVE. 
// ------------------------------------------------    


highp float ix_to_random(in float ix, in float seed) {
  // For high numbers, taking the log avoids coincidence.
  highp float seed2 = log(ix + 2.) + 1.;
  vec2 co = vec2(seed2, seed);
  highp float a = 12.9898;
  highp float b = 78.233;
  highp float c = 43758.5453;
  highp float dt = dot(co.xy, vec2(a, b));
  highp float sn = mod(dt, 3.14);
  return fract(sin(sn) * c);
}



// The fill color.
varying vec4 fill;
varying float point_size;

uniform float u_jitter_radius_lookup;
uniform float u_jitter_radius_lookup_y_constant;
uniform vec2 u_jitter_radius_lookup_x_domain;
uniform vec2 u_jitter_radius_lookup_y_domain;

float point_size_adjust;

// A coordinate to throw away a vertex point.
vec4 discard_me = vec4(100.0, 100.0, 1.0, 1.0);

// Initialized in the main loop
// mat3 from_coord_to_gl;

const float e = 1.618282;
// I've been convinced.
const float tau = 2. * 3.14159265359;

float interpolate_raw(in float x, in float min, in float max) {
  if (x < min) {return 0.;}
  if (x > max) {return 1.;}
  return (x - min)/(max - min);
}

float interpolate(in float x, in float min, in float max) {
  if (max < min) {
    return 1. - interpolate_raw(x, max, min);
  } else {
    return interpolate_raw(x, min, max);
  }
}

/*

The following glsl code was written in python.

buffers = [*range(16)]

def write_buffs(buffs):
    if len(buffs) == 1:
        return[f"return buffer_{buffs[0]}"]
    condition_1 = ["  " + line for line in write_buffs(buffs[:len(buffs)//2])]
    condition_2 = ["" + line for line in write_buffs(buffs[len(buffs)//2:])]

    args = [
        f"if (i < {buffs[len(buffs) // 2 - 1]}.5) {{",
        *condition_1,
        "}",
        *condition_2
    ]
    return args

print("\n".join(write_buffs(buffers)))
*/

float get_buffer(in float i) {
  //given an index, returns the appropriate buffer.
  if (i < 7.5) {
    if (i < 3.5) {
      if (i < 1.5) {
        if (i < 0.5) {
          return buffer_0;
        }
        return buffer_1;
      }
      if (i < 2.5) {
        return buffer_2;
      }
      return buffer_3;
    }
    if (i < 5.5) {
      if (i < 4.5) {
        return buffer_4;
      }
      return buffer_5;
    }
    if (i < 6.5) {
      return buffer_6;
    }
    return buffer_7;
  }
  if (i < 11.5) {
    if (i < 9.5) {
      if (i < 8.5) {
        return buffer_8;
      }
      return buffer_9;
    }
    if (i < 10.5) {
      return buffer_10;
    }
    return buffer_11;
  }
  if (i < 13.5) {
    if (i < 12.5) {
      return buffer_12;
    }
    return buffer_13;
  }
  if (i < 14.5) {
    return buffer_14;
  }
  return buffer_15;
}


float linstep(in vec2 range, in float x) {
  return interpolate(x, range.x, range.y);
  float scale_size = range.y - range.x;
  float from_left = x - range.x;
  return clamp(from_left / scale_size, 0.0, 1.0);
}

float linscale(in vec2 range, in float x) {
  float scale_size = range.y - range.x;
  float from_left = x - range.x;
  return from_left / scale_size;
}

vec2 box_muller(in float ix, in float seed) {
  // Box-Muller transform gives you two gaussian randoms for two uniforms.
  highp float U = ix_to_random(ix, seed);
  highp float V = ix_to_random(ix, seed + 17.123123);
  return vec2(sqrt(-2. * log(U)) * cos(tau * V),
              sqrt(-2. * log(U)) * sin(tau * V));
}

/*************** END COLOR SCALES *******************************/

float domainify(in vec2 domain, in float transform, in float attr, in bool clamped) {

  // Clamp an attribute into a domain, with an optional log or sqrt transform.
  if (transform == 2.) {
    domain = sqrt(domain);
    attr = sqrt(attr);
  }
  if (transform == 3.) {
    domain = log(domain);
    attr = log(attr);
  }
  if (clamped) {
    return linstep(domain, attr);
  } else {
    return linscale(domain, attr);
  }
}

mat3 pixelspace_to_glspace;

float run_numeric_filter (in float a_filter,
  in float u_filter_op, in float u_filter_param_1,
  in float u_filter_param_2) {
  bool truthy;
  if (u_filter_op < 1.5) {
    truthy = a_filter < u_filter_param_1;
  } else if (u_filter_op < 2.5) {
    truthy = a_filter > u_filter_param_1;
  } else if (u_filter_op < 3.5) {
    truthy = a_filter == u_filter_param_1;
  } else if (u_filter_op < 4.5) {
    truthy = abs(a_filter - u_filter_param_2) < u_filter_param_1;
  }
  if (truthy) {return 1.;} else {return 0.;}
}

float choose_and_run_filter(
  in vec3 u_filter_numeric,
  in float a_filter,
  in float map_location,
  in bool filter_is_constant
  ) {
    if (filter_is_constant) {
      return 1.;
    }
    if (u_filter_numeric.r < 0.5) {
      // Must be on a dictionary. Unreasonable assumption, maybe?
      float frac_filter = linstep(vec2(-2047., 2047), a_filter);
      float map_coords = (map_location + .5) / 32.;
      return texture2D(u_one_d_aesthetic_map, vec2(map_coords, frac_filter)).a;
    } else {
      return run_numeric_filter(a_filter,
        u_filter_numeric.r, u_filter_numeric.g, u_filter_numeric.b);
    }
}

#pragma glslify: logarithmic_spiral_jitter = require('./log_spiral_jitter.vert')
#pragma glslify: packFloat = require('glsl-read-float')
#pragma glslify: easeCubic = require(glsl-easings/sine-in-out)

#ifndef PI
#define PI 3.141592653589793
#endif

vec2 bezier_interpolate(vec2 p1, vec2 p2, float frac, float ix) {
  // Interpolates between two points on a Bezier curve around a jittered middle.
  // Makes animations look cooler.
    vec2 midpoint = box_muller(ix, 3.) * .05 *
         dot(p2 - p1, p2 - p1)
         + p2 / 2. + p1 / 2.;

      return mix(
        mix(p2, midpoint, frac),
        mix(midpoint, p1, frac),
      frac);
}

float sineInOut(float t) {
  return -0.5 * (cos(PI * t) - 1.0);
}

const vec4 decoder = vec4(1./256./256./256., 1. / 256. / 256., 1. / 256., 1.);

float RGBAtoFloat(in vec4 floater) {
  // Scale values up by 256.
  return dot(floater, decoder);
}


float texture_float_lookup(in vec2 domain,
                           in vec2 range,
                           in float transform,
                           in float attr,
                           in float texture_position) {
  if (transform == 4.0) {
    // Literal transforms aren't looked up, just returned as is.
    return attr;
  }
  float inrange = domainify(domain, transform, attr, true);
  if (texture_position > 0.5) {
    float y_pos = texture_position / 32. - 0.5 / 32.;
    vec4 encoded = texture2D(u_one_d_aesthetic_map, vec2(y_pos, inrange));
    return encoded.a;
    return RGBAtoFloat(encoded); // unreachable.
  } else {
    return mix(range.x, range.y, inrange);
  }
}

vec2 calculate_position(in vec2 position, in float x_scale_type,
                        in vec2 x_domain, in vec2 x_range, in float y_scale_type,
                        in vec2 y_domain, in vec2 y_range, in mat3 window_scale,
                        in mat3 zoom, in float x_map_position,
                        in float y_map_position
                        ) {
    float x;
    float y;

    if (x_scale_type < 4.0) {
      float x_ = linscale(u_color_domain, a_color);
      x = texture_float_lookup(x_domain, x_range,
        x_scale_type,
        position.x, 0. // ymap position 0 means never use a texture lookup.
        );
    } else {
      x = position.x;
    }

    if (y_scale_type < 4.0) {
      y = texture_float_lookup(y_domain, y_range, y_scale_type,
        position.y, 0. // ymap position 0 means never use a texture lookup.
        );
    } else {
      y = position.y;
    }
    vec3 pos2d = vec3(x, y, 1.0) * window_scale * zoom * pixelspace_to_glspace;
    return pos2d.xy;
}

float cubicInOut(float t) {
  return t < 0.5
    ? 4.0 * t * t * t
    : 1. - 4.0 * pow(1. - t, 3.0);
}


vec4 ixToRGBA(in float ix)  {
  float min = fract(ix / 256.);
  float mid = fract((ix - min) / 256.);
  float high = fract((ix - min - mid * 256.) / (256.) / 256.);
  return vec4(min, mid, high, 1.);
}

vec2 circle_jitter(in float ix, in float aspect_ratio, in float time,
                   in float radius, in float speed) {
  vec2 two_gaussians = box_muller(ix, 12.);

  float stagger_time = two_gaussians.y * tau;

  // How long does a circuit take?

  float units_per_period = radius * tau;
  float units_per_second = speed;
  float seconds_per_period = units_per_period / units_per_second;
  float time_period = seconds_per_period;
  if (time_period > 1e4) {
    return vec2(0., 0.);
  }

  // Adjust time from the clock to our current spot.
  float varying_time = time + stagger_time * time_period;
  // Where are we from 0 to 1 relative to the time period

  float relative_time = 1. - mod(varying_time, time_period) / time_period;

  float theta = relative_time * tau;
  // Problem--should it lie on a disk, or on a circle?
  float r_mult = 1.;//(sqrt(ix_to_random(ix, 7.)));

  return vec2(cos(theta) * r_mult, aspect_ratio * sin(theta) * r_mult) *
         radius;
}

vec2 calculate_jitter(
  in float jitter_type,
  in float ix, // distinguishing index
  in vec2 jitter_radius_domain,
  in vec2 jitter_radius_range,
  in float jitter_radius_transform,
  in float jitter_radius,
  in float jitter_radius_map_position,
  in bool jitter_radius_is_constant,
  in vec2 jitter_speed_domain,
  in vec2 jitter_speed_range,
  in float jitter_speed_transform,
  in float jitter_speed,
  in float jitter_speed_map_position,
  in bool jitter_speed_is_constant
) {

  // Jitter is calculated based on speed, so requires two full maps in.
  if (jitter_type == 0.) {
    // No jitter
    return vec2(0., 0.);
  }

  if (jitter_type == 5.) {
    // Temporal jitter--should be broken out into a separate channel/channels.
    float time_period = 60.;
    float share = 1./4.;
    float offset = ix_to_random(ix, 12.);
    float fractional = fract((offset * time_period + u_time)/time_period);
    if (fractional > share) {
      return vec2(0., 0.);
    }
    float size = 0.5 * (1. - cos(2. * 3.1415926 * min(fractional/share, 1. - fractional/share)));
    size = clamp(size, 0., 1.);
    return vec2(size, 0.);
  }
  float jitter_r;  
  if (jitter_radius_is_constant) {
    jitter_r = jitter_radius;
  } else {
    jitter_r = texture_float_lookup(
    jitter_radius_domain,
    jitter_radius_range,
    jitter_radius_transform,
    jitter_radius,
    0.);
  }
  if (jitter_type == 3.) {
    float r = box_muller(ix, 1.).r * jitter_r;
    r = r * point_size_adjust;
    float theta = ix_to_random(ix, 15.) * tau;
    return vec2(cos(theta) * r, sin(theta) * r * u_width / u_height);
  }

  if (jitter_type == 2.) {
    // uniform in the circle.
    float theta = ix_to_random(ix, 15.) * tau;
    float r = jitter_r * sqrt(ix_to_random(ix, 115.));
    r = r * point_size_adjust;
    return vec2(cos(theta) * r, sin(theta) * r * u_width / u_height);
  }

  /* Jittering that includes motion) */

  float p_jitter_speed =
      texture_float_lookup(jitter_speed_domain,
                          jitter_speed_range,
                          jitter_speed_transform, jitter_speed,
                          jitter_speed_map_position);

  if (jitter_type == 1.) {
    return logarithmic_spiral_jitter(
                ix,
                0.005 * jitter_r,                     // a
                1.3302036,                       // angle parameter
                0.005,                                 // angle random
                jitter_r,                             // max radius
                0.03,                                 // random_rotation
                0.06,                                 // random radius
                0.003 * point_size_adjust * jitter_r, // donut.
                .5 * p_jitter_speed * jitter_r / point_size_adjust, // speed
                u_time,                                           // time
                0.8,                                              // acceleration
                2.0,                                              // n_spirals
                .09, //shear
                u_width/u_height         // shear
            );
  }

  if (jitter_type == 4.) {
    // circle
    return circle_jitter(ix, u_width/u_height, u_time, jitter_r, p_jitter_speed);
  }
}


void run_color_fill(in float ease) {
  float alpha = min(u_alpha, 1.0);
  if (u_only_color >= -1.5) {
    if (u_only_color > -.5 && a_color != u_only_color) {
      gl_Position = discard_me;
      return;
    } else {
      // -1 is a special value meaning 'plot everything'.
      fill = vec4(0., 0., 0., 1. / 255.);
      gl_PointSize = 1.;
    }
  } else {
    if (a_color_is_constant) {
      fill = vec4(u_color_constant.rgb, alpha);
    } else {
      float fractional_color = linstep(u_color_domain, a_color);
      float color_pos = (u_color_map_position * -1. - 1.) / 32. + 0.5 / 32.;
      fractional_color = domainify(u_color_domain, u_color_transform, a_color, true);
      fill = texture2D(u_color_aesthetic_map , vec2(color_pos, fractional_color));
      fill = vec4(fill.rgb, alpha);
    }
    if (ease < 1.) {
      vec4 last_fill;
      if (a_last_color_is_constant) {
        last_fill = vec4(u_last_color_constant.rgb, alpha);
      } else {
        float last_fractional = linstep(u_last_color_domain, a_last_color);
        float color_pos = (u_last_color_map_position * -1. - 1.) / 32. + 0.5 / 32.;
        last_fractional = domainify(u_last_color_domain, u_last_color_transform, a_last_color, true);
        last_fill = texture2D(u_color_aesthetic_map, vec2(color_pos, last_fractional));
        // Alpha channel interpolation already happened.
        last_fill = vec4(last_fill.rgb, alpha);
      }
      // RGB blending is bad--maybe use https://www.shadertoy.com/view/lsdGzN
      // instead?
      fill = mix(last_fill, fill, ease);
    }
  }
}

vec2 calc_and_interpolate_positions(
  inout vec2 old_position,
  in float u_last_x_transform,
  in vec2 u_last_x_domain,
  in vec2 u_last_x_range,
  in float u_last_y_transform,
  in vec2 u_last_y_domain,
  in vec2 u_last_y_range,
  in mat3 u_last_window_scale,
  in mat3 u_zoom,
  in float u_last_x_map_position,
  in float u_last_y_map_position,
  inout vec2 position,
  in float u_x_transform,
  in vec2 u_x_domain,
  in vec2 u_x_range,
  in float u_y_transform,
  in vec2 u_y_domain,
  in vec2 u_y_range,
  in mat3 u_window_scale,
  in float u_x_map_position,
  in float u_y_map_position,
  in float interpolation,
  in float u_grid_mode, 
  in float ix) {

  old_position = calculate_position(old_position, u_last_x_transform,
    u_last_x_domain, u_last_x_range,
    u_last_y_transform, u_last_y_domain, u_last_y_range,
    u_last_window_scale,
    u_zoom, u_last_x_map_position,      
    u_last_y_map_position);
    
  bool plot_actual_position = u_grid_mode < .5;

  if (plot_actual_position) {
    position = calculate_position(position, 
      u_x_transform,
      u_x_domain, u_x_range,
      u_y_transform, u_y_domain, 
      u_y_range, u_window_scale, u_zoom, 
      u_x_map_position, u_y_map_position);
    float xpos = clamp((1. + position.x) / 2., 0., 1.);
    float randy = ix_to_random(ix, 13.76);
    float delay = xpos + randy * .1;
    delay = delay * 3.;

    float frac = interpolate(
      u_update_time,
      delay,
      u_transition_duration + delay
    );

    frac = easeCubic(frac);

    if (frac <= 0.) {
      position = old_position;
    } else if (frac < 1.) {
      frac = fract(frac);
      position = bezier_interpolate(position, old_position, frac, ix);
    }
  } else {
    position.x = -1. + 2. * linscale(u_x_domain, position.x);
    //position.y = -1.0;
    vec2 jitterspec = vec2(
      (ix_to_random(ix, 3.) * a_jitter_radius ) * 2.,
      (ix_to_random(ix, 1.5) * a_jitter_speed ) * 2.
    );
    position = position + jitterspec;
  }
  return position;
}


void main() {
  float debug_mode = 0.;
  float ix = buffer_0;
  float ix_in_tile = buffer_1;
  if (ix > u_maxix) {
    // throw away points that are too low.
    gl_Position = discard_me;
    return;
  }

  if (debug_mode > 1.5) {
    // Debug mode.
    gl_PointSize = 2.;
    gl_Position = vec4(box_muller(ix, 2.).xy * .33, 0., 1.);
    return;
  }


 // Autogenerated below this point

    if (u_x_buffer_num > -0.5) {
      a_x = get_buffer(u_x_buffer_num);
      a_x_is_constant = false;
    } else {
      a_x = u_x_constant;
      a_x_is_constant = true;
    }

    if (u_last_x_buffer_num > -0.5) {
      a_last_x = get_buffer(u_last_x_buffer_num);
      a_last_x_is_constant = false;
    } else {
      a_last_x = u_last_x_constant;
      a_last_x_is_constant = true;
    }

    if (u_y_buffer_num > -0.5) {
      a_y = get_buffer(u_y_buffer_num);
      a_y_is_constant = false;
    } else {
      a_y = u_y_constant;
      a_y_is_constant = true;
    }

    if (u_last_y_buffer_num > -0.5) {
      a_last_y = get_buffer(u_last_y_buffer_num);
      a_last_y_is_constant = false;
    } else {
      a_last_y = u_last_y_constant;
      a_last_y_is_constant = true;
    }

    if (u_jitter_radius_buffer_num > -0.5) {
      a_jitter_radius = get_buffer(u_jitter_radius_buffer_num);
      a_jitter_radius_is_constant = false;
    } else {
      a_jitter_radius = u_jitter_radius_constant;
      a_jitter_radius_is_constant = true;
    }

    if (u_last_jitter_radius_buffer_num > -0.5) {
      a_last_jitter_radius = get_buffer(u_last_jitter_radius_buffer_num);
      a_last_jitter_radius_is_constant = false;
    } else {
      a_last_jitter_radius = u_last_jitter_radius_constant;
      a_last_jitter_radius_is_constant = true;
    }

    if (u_jitter_speed_buffer_num > -0.5) {
      a_jitter_speed = get_buffer(u_jitter_speed_buffer_num);
      a_jitter_speed_is_constant = false;
    } else {
      a_jitter_speed = u_jitter_speed_constant;
      a_jitter_speed_is_constant = true;
    }

    if (u_last_jitter_speed_buffer_num > -0.5) {
      a_last_jitter_speed = get_buffer(u_last_jitter_speed_buffer_num);
      a_last_jitter_speed_is_constant = false;
    } else {
      a_last_jitter_speed = u_last_jitter_speed_constant;
      a_last_jitter_speed_is_constant = true;
    }

    if (u_size_buffer_num > -0.5) {
      a_size = get_buffer(u_size_buffer_num);
      a_size_is_constant = false;
    } else {
      a_size = u_size_constant;
      a_size_is_constant = true;
    }

    if (u_last_size_buffer_num > -0.5) {
      a_last_size = get_buffer(u_last_size_buffer_num);
      a_last_size_is_constant = false;
    } else {
      a_last_size = u_last_size_constant;
      a_last_size_is_constant = true;
    }

    if (u_filter_buffer_num > -0.5) {
      a_filter = get_buffer(u_filter_buffer_num);
      a_filter_is_constant = false;
    } else {
      a_filter = u_filter_constant;
      a_filter_is_constant = true;
    }

    if (u_last_filter_buffer_num > -0.5) {
      a_last_filter = get_buffer(u_last_filter_buffer_num);
      a_last_filter_is_constant = false;
    } else {
      a_last_filter = u_last_filter_constant;
      a_last_filter_is_constant = true;
    }

    if (u_filter2_buffer_num > -0.5) {
      a_filter2 = get_buffer(u_filter2_buffer_num);
      a_filter2_is_constant = false;
    } else {
      a_filter2 = u_filter2_constant;
      a_filter2_is_constant = true;
    }

    if (u_last_filter2_buffer_num > -0.5) {
      a_last_filter2 = get_buffer(u_last_filter2_buffer_num);
      a_last_filter2_is_constant = false;
    } else {
      a_last_filter2 = u_last_filter2_constant;
      a_last_filter2_is_constant = true;
    }

    if (u_x0_buffer_num > -0.5) {
      a_x0 = get_buffer(u_x0_buffer_num);
      a_x0_is_constant = false;
    } else {
      a_x0 = u_x0_constant;
      a_x0_is_constant = true;
    }

    if (u_last_x0_buffer_num > -0.5) {
      a_last_x0 = get_buffer(u_last_x0_buffer_num);
      a_last_x0_is_constant = false;
    } else {
      a_last_x0 = u_last_x0_constant;
      a_last_x0_is_constant = true;
    }

    if (u_y0_buffer_num > -0.5) {
      a_y0 = get_buffer(u_y0_buffer_num);
      a_y0_is_constant = false;
    } else {
      a_y0 = u_y0_constant;
      a_y0_is_constant = true;
    }

    if (u_last_y0_buffer_num > -0.5) {
      a_last_y0 = get_buffer(u_last_y0_buffer_num);
      a_last_y0_is_constant = false;
    } else {
      a_last_y0 = u_last_y0_constant;
      a_last_y0_is_constant = true;
    }

    if (u_foreground_buffer_num > -0.5) {
      a_foreground = get_buffer(u_foreground_buffer_num);
      a_foreground_is_constant = false;
    } else {
      a_foreground = u_foreground_constant;
      a_foreground_is_constant = true;
    }

    if (u_last_foreground_buffer_num > -0.5) {
      a_last_foreground = get_buffer(u_last_foreground_buffer_num);
      a_last_foreground_is_constant = false;
    } else {
      a_last_foreground = u_last_foreground_constant;
      a_last_foreground_is_constant = true;
    }

//  END AUTOGENERATED. DO NOT EDIT ABOVE. 
// ------------------------------------------------    
  gl_PointSize = 1.;

  if (u_color_buffer_num > -0.5) {
    a_color = get_buffer(u_color_buffer_num);
    a_color_is_constant = false;
  } else {
    a_color = ix;
    a_color_is_constant = true;
  }

  if (u_last_color_buffer_num > -0.5) {
    a_last_color = get_buffer(u_last_color_buffer_num);
    a_last_color_is_constant = false;
  } else {
    a_last_color = ix;
    a_last_color_is_constant = true;
  }

  pixelspace_to_glspace = mat3(
      2. / u_width, 0., -1.,
      0., - 2. / u_height, 1.,
      0., 0., 1.
  );

  float interpolation =
    interpolate(u_update_time, 0., u_transition_duration);
    
  float ease = interpolation;

  // I set this sometimes.

  vec2 position = vec2(a_x, a_y);
  vec2 old_position = vec2(a_last_x, a_last_y);

  position = calc_and_interpolate_positions(
    old_position,
    u_last_x_transform,
    u_last_x_domain, u_last_x_range,
    u_last_y_transform,
    u_last_y_domain, u_last_y_range,
    u_last_window_scale,
    u_zoom,
    u_last_x_map_position,
    u_last_y_map_position,
    position,
    u_x_transform,
    u_x_domain, u_x_range,
    u_y_transform,
    u_y_domain, u_y_range,
    u_window_scale,
    u_x_map_position,
    u_y_map_position,
    interpolation,
    u_grid_mode,
    ix
  );

  if (u_x0_buffer_num > 0.) {
    vec2 position0 = vec2(a_x0, a_y0);
    vec2 old_position0 = vec2(a_last_x0, a_last_y0);

    position0 = calc_and_interpolate_positions(
      old_position0,
      u_last_x0_transform,
      u_last_x0_domain, u_last_x0_range,
      u_last_y0_transform,
      u_last_y0_domain, u_last_y0_range,
      u_last_window_scale,
      u_zoom,
      u_last_x0_map_position,
      u_last_y0_map_position,
      position0,
      u_x0_transform,
      u_x0_domain, u_x0_range,
      u_y0_transform,
      u_y0_domain, u_y0_range,
      u_window_scale,
      u_x0_map_position,
      u_y0_map_position,
      interpolation,
      u_grid_mode,
      ix
    );

    if (u_position_interpolation_mode > 0.) {
      float rand2 = ix_to_random(ix, 11.76);

      // If it's a continuous loop, just choose a random point along that loop.
      float rand_offset = fract(u_update_time/u_transition_duration / 10. + rand2);
      position = mix(position0, position, rand_offset);
    }
  }

  bool plot_actual_position = u_grid_mode < .5;

  if (u_position_interpolation_mode > 0.) {
    float rand2 = ix_to_random(ix, 11.76);

    // If it's a continuous loop, just choose a random point along that loop.
    float rand_offset = fract(u_update_time/u_transition_duration + rand2);
    
  }

/*  position = vec2(
    ix_to_random(ix, .1),
    ix_to_random(ix, .2)
  );*/
  /* FILTERING */

  float filter_status = choose_and_run_filter(
    u_filter_numeric,
    a_filter,
    u_filter_map_position,
    a_filter_is_constant
  );

  float last_filter_status = choose_and_run_filter(
    u_last_filter_numeric,
    a_last_filter,
    u_last_filter_map_position,
    a_last_filter_is_constant
  );

  float filter2_status = choose_and_run_filter(
    u_filter2_numeric,
    a_filter2,
    u_filter2_map_position,
    a_filter2_is_constant
  );

  float last_filter2_status = choose_and_run_filter(
    u_last_filter2_numeric,
    a_last_filter2,
    u_last_filter2_map_position,
    a_last_filter2_is_constant
  );

  float foreground_status = choose_and_run_filter(
    u_foreground_numeric,
    a_foreground,
    u_foreground_map_position,
    a_foreground_is_constant
  );

  float last_foreground_status = choose_and_run_filter(
    u_last_foreground_numeric,
    a_last_foreground,
    u_last_foreground_map_position,
    a_last_foreground_is_constant
  );
  float fg_ease = mix(last_foreground_status, foreground_status, ease);
  if (ease < ix_to_random(ix, 1.)) {
    foreground_status = last_foreground_status;
  }

  /*if (a_foreground_is_constant) {
    foreground_status = 1.;
  }*/

  bool was_filtered = last_filter2_status < .5 || last_filter_status < .5;
  bool will_be_filtered = filter2_status < .5 || filter_status < .5;

  bool overall_filter_status = will_be_filtered;

  if (ease < ix_to_random(ix, 1.)) {
    overall_filter_status = was_filtered;
  }

  if (overall_filter_status == true) {
    gl_Position = discard_me;
    return;
  }

  float size_multiplier = texture_float_lookup(
    u_size_domain,
    u_size_range,
    u_size_transform, a_size,
    u_size_map_position);

  float last_size_multiplier = texture_float_lookup(
    u_last_size_domain, u_last_size_range, u_last_size_transform, a_last_size,
    u_last_size_map_position);

  size_multiplier = u_base_size * 
     mix(last_size_multiplier, size_multiplier, ease);
  
  float depth_size_adjust = (1.0 - ix / (u_maxix));

  // It's ugly on new macs when it jumps straight from one to two for a bunch of points at once.
  float size_fuzz = exp(ix_to_random(ix, 3.1) * .5 - .25);

  point_size_adjust = exp(log(u_k) * u_zoom_balance) * size_fuzz;// * depth_size_adjust;
//  point_size_adjust = exp(log(u_k) * u_zoom_balance);
  gl_PointSize = point_size_adjust * size_multiplier;
  if (gl_PointSize <= 0.01) {
    gl_Position = discard_me;
    return;
  }
  vec2 jitter = vec2(0., 0.);
//  

  if (plot_actual_position && (u_jitter > 0. || u_last_jitter > 0.)) {
    /* JITTER */
    jitter = vec2(ix_to_random(ix, 2. + u_time), ix_to_random(ix, 3. + u_time)) * .01;
    float jitter_radius_fraction;
      jitter = calculate_jitter(
        u_jitter, ix,
        u_jitter_radius_domain,        u_jitter_radius_range,
        u_jitter_radius_transform,        a_jitter_radius,
        u_jitter_radius_map_position,        a_jitter_radius_is_constant,
        u_jitter_speed_domain,
        u_jitter_speed_range,
        u_jitter_speed_transform, a_jitter_speed,
        u_jitter_speed_map_position, a_jitter_speed_is_constant
      );
    vec2 last_jitter;
    if (ease < 1.) {
      last_jitter = calculate_jitter(
        u_last_jitter, ix,
        u_last_jitter_radius_domain,       
        u_last_jitter_radius_range,
        u_last_jitter_radius_transform,        
        a_last_jitter_radius,
        u_last_jitter_radius_map_position,
        a_last_jitter_radius_is_constant,
        u_last_jitter_speed_domain,
        u_last_jitter_speed_range,
        u_last_jitter_speed_transform,
        a_last_jitter_speed,
        u_last_jitter_speed_map_position,
        a_last_jitter_speed_is_constant
      );
      jitter = mix(last_jitter, jitter, ease);
    }
    if (u_jitter == 5.) {
      // temporal jitter: rescale the point from the first dimension
      gl_PointSize *= jitter.x;
      jitter = vec2(0., 0.);
      if (gl_PointSize < 0.05) {
        gl_Position = discard_me;
        return;
      }
    }
    gl_Position = vec4(position + jitter, 0., 1.);
  } else {
    gl_Position = vec4(position + jitter, 0., 1.);
  }  
  if (u_color_picker_mode == 1.) {
    // Add one so the first element is distinguishable.
    fill = packFloat(ix + 1.);
  } else if (u_color_picker_mode == 2.) {
    fill = packFloat(u_tile_id + 1.);
  } else if (u_color_picker_mode == 3.) {
    fill = packFloat(ix_in_tile + 1.);
  } else {
    run_color_fill(ease);
  }

  // Are we in a mode where we need to plot foreground and background?
  if (u_foreground_number > -1.) {
    // In that case, throw away points from the other half of the set.
    if (u_foreground_number != foreground_status) {
      gl_Position = discard_me;
      return;
    }
    if (u_foreground_number == 1.) {
      gl_PointSize *= u_foreground_size;
      fill = vec4(fill.rgb, min(1., fill.a * u_foreground_alpha));
    }
    // If we're in background mode, got to change the points a bit.
    if (u_foreground_number == 0.) { 
      gl_PointSize *= u_background_size;
      // Should the color piker run?
      if (u_color_picker_mode >= 1.) {
        if (u_background_mouseover == 1.) {
          // pass--keep the colors as are.
        } else {
          gl_Position = discard_me;
          return;
        }
      } else {
       float alpha = min(u_alpha * u_background_rgba.a, 1.);
        if (alpha < 1./255.) {
          // Very light alphas must be quantized. Only show an appropriate sample.
          float seed = ix_to_random(ix, 38.6);
          if (alpha * 255. < seed) {
            gl_Position = discard_me;
            return;
          } else {
            alpha = 1. / 255.;
          }
        }
        fill = vec4(u_background_rgba.rgb, alpha);
      }
    }
  }
    
  point_size = gl_PointSize;

/*  if (u_use_glyphset > 0. && point_size > 5.0) {
    float random_letter = floor(64. * ix_to_random(ix, 1.3));
    letter_pos = vec2(
      // start at a number between 0 and 7.
      mod(random_letter, 8.) / 8.,
      floor(random_letter / 8.) / 8.
    );
    gl_PointSize *= 3.0;
  }*/
}
