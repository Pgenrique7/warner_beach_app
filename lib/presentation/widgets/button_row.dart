import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          _HoverableButton(
            label: 'Buscar',
            icon: Icons.search,
            onPressed: () {},
            isFirst: true,
          ),
          Container(
            width: 1,
            color: Colors.white,
          ),
          _HoverableButton(
            label: 'Mis entradas',
            icon: Icons.airplane_ticket_outlined,
            onPressed: () {},
            isFirst: false,
          ),
        ],
      ),
    );
  }
}

class _HoverableButton extends StatefulWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isFirst;

  const _HoverableButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.isFirst,
    Key? key,
  }) : super(key: key);

  @override
  State<_HoverableButton> createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<_HoverableButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: widget.isFirst ? const Radius.circular(25) : Radius.zero,
                right: !widget.isFirst ? const Radius.circular(25) : Radius.zero,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon, color: Colors.white, size: 18),
                const SizedBox(width: 4),
                Text(
                  widget.label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
