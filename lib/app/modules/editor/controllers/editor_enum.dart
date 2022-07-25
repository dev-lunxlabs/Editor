enum Boundary {
  none,
  top,
  left,
  bottom,
  right,
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

Map<String, double> vRatio = {
  "custom": 0.0,
  "square": 1.0,
  "portrait": 9 / 16,
  "landscape": 16 / 9,
};

enum BtnSet {
  video,
  audio,
  text,
  elements,
  filter,
}

enum VideoBtnSet {
  trim,
  crop,
  concatenate,
  split,
  cover,
  speed,
  flip,
  aspectRatio,
  transition,
}

enum AudioBtnSet {
  add,
  remove,
  extract,
}

enum TextBtnSet {
  text,
  autoCaption,
}

enum ElementBtnSet {
  brush,
  stickers,
  image,
  video,
  border,
  watermark,
  background,
}

enum FilterBtnSet {
  template,
  color,
  contrast,
}

enum Operation {
  trim,
  crop,
  concatenate,
  split,
  cover,
  speed,
  flip,
  aspectRatio,
  transition,
  text,
  autoCaption,
  rotate,
  add,
  remove,
  extract,
  brush,
  stickers,
  image,
  video,
  border,
  watermark,
  background,
}
