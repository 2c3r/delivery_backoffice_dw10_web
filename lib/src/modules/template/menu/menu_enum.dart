enum Menu {
  paymentType(
    'payment-type/',
    'payment_type_icon.png',
    'payment_type_icon_selected.png',
    'Administrar Formas de Pagamentos',
  ),
  products(
    'products/',
    'product_icon.png',
    'product_icon_selected.png',
    'Administrar Produtos',
  ),
  order(
    'order/',
    'order_icon.png',
    'order_icon_selected.png',
    'Pedidos do Dia',
  );

  final String route;
  final String assetIcon;
  final String assetIconSelected;
  final String label;

  const Menu(this.route, this.assetIcon, this.assetIconSelected, this.label);
}
