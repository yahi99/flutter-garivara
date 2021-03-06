import 'package:andgarivara/User/view/RideResults/costDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>DraggableFloatingActionButton(
      offset: new Offset(270, 120),
      backgroundColor: Theme.of(context).accentColor,
      icon: Icons.monetization_on_outlined,
      label: 'CostDetailsScreen().grandTotal.toString()',
      onPressed: () => Get.to(CostDetailsScreen()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      appContext: context,
      appBar: AppBar(),
      data: 'your_data',
    ));
  }
}

const BoxConstraints _kSizeConstraints = BoxConstraints.tightFor(
  width: 156.0,
  height: 56.0,
);

const BoxConstraints _kMiniSizeConstraints = BoxConstraints.tightFor(
  width: 140.0,
  height: 40.0,
);

/*
const BoxConstraints _kExtendedSizeConstraints = BoxConstraints(
  minHeight: 48.0,
  maxHeight: 48.0,
);
*/

const Offset _kDefaultOffset = Offset(0, 0);

class _DefaultHeroTag {
  const _DefaultHeroTag();
  @override
  String toString() => '<default FloatingActionButton tag>';
}

class DraggableFloatingActionButton extends StatefulWidget {
  DraggableFloatingActionButton({
    Key key,
    this.icon,
    this.label,
    this.tooltip,
    this.foregroundColor,
    this.backgroundColor,
    this.heroTag = const _DefaultHeroTag(),
    this.elevation = 6.0,
    this.highlightElevation = 12.0,
    @required this.onPressed,
    this.mini = false,
    this.shape = const CircleBorder(),
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.isExtended = false,
    this.appContext,
    this.appBar,
    this.data = 'dfab',
    this.offset = _kDefaultOffset,
  })  : assert(elevation != null),
        assert(highlightElevation != null),
        assert(mini != null),
        assert(shape != null),
        assert(isExtended != null),
        assert(appContext != null),
        _sizeConstraints = mini ? _kMiniSizeConstraints : _kSizeConstraints,
        super(key: key);

  final IconData icon;

  final String label;

  final String tooltip;

  final Color foregroundColor;

  final Color backgroundColor;

  final Object heroTag;

  final VoidCallback onPressed;

  final double elevation;

  final double highlightElevation;

  final bool mini;

  final ShapeBorder shape;

  final Clip clipBehavior;

  final bool isExtended;

  final MaterialTapTargetSize materialTapTargetSize;

  final BuildContext appContext;

  final AppBar appBar;

  final Offset offset;

  final BoxConstraints _sizeConstraints;

  final String data;

  @override
  State<StatefulWidget> createState() => _DraggableFloatingActionButtonState();
}

class _DraggableFloatingActionButtonState
    extends State<DraggableFloatingActionButton> {
  Offset dynamicOffset;

  @override
  Widget build(BuildContext context) {
    if (dynamicOffset == null) {
      dynamicOffset = widget.offset;
    }

    FloatingActionButton _floatingActionButton = new FloatingActionButton.extended(
        key: widget.key,
        icon: Icon(widget.icon,color: Colors.white,),
        label: Text(widget.label,style: TextStyle(color: Colors.white,fontSize: 16),),
        tooltip: widget.tooltip,
        backgroundColor: widget.backgroundColor,
        foregroundColor: widget.foregroundColor,
        heroTag: widget.heroTag,
        elevation: widget.elevation,
        highlightElevation: widget.highlightElevation,
        onPressed: widget.onPressed,
        shape: widget.shape,
        isExtended: widget.isExtended,
        materialTapTargetSize: widget.materialTapTargetSize,
        clipBehavior: widget.clipBehavior,
        );

    return Positioned(
        left: dynamicOffset.dx,
        top: dynamicOffset.dy,
        child: Draggable(
          data: widget.data,
          child: _floatingActionButton,
          feedback: _floatingActionButton,
          childWhenDragging: Container(),
          onDraggableCanceled: (Velocity velocity, Offset offset) {
            setState(() {
              double appBarHeight = 0;
              if (widget.appBar != null) {
                appBarHeight = widget.appBar.preferredSize.height;
              }

              var dy = offset.dy -
                  appBarHeight -
                  MediaQuery.of(widget.appContext).padding.top;

              var maxDy = MediaQuery.of(widget.appContext).size.height -
                  MediaQuery.of(widget.appContext).padding.bottom -
                  appBarHeight -
                  MediaQuery.of(widget.appContext).padding.top;

              if (dy < 0) {
                dy = 0;
              } else if (dy > maxDy) {
                dy = maxDy - widget._sizeConstraints.maxHeight;
              }

              Offset newOffset = new Offset(offset.dx, dy);
              dynamicOffset = newOffset;
            });
          },
        ));
  }
}
