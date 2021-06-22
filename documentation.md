## **How to Install**

- first thing you need to create`.env` file and add`PORT` and`DATABASEURL` to it
- run`npm i` or`yarn` and your good to go

## Order Statuses

- **Pending** — Customer started the checkout process but did not complete it. Incomplete orders are assigned a "Pending" status and can be found under the More tab in the View Orders screen.
- **Awaiting Payment** — Customer has completed the checkout process, but payment has yet to be confirmed.[Authorize only transactions](https://support.bigcommerce.com/s/article/Manually-Capturing-Transactions-Authorize-Only) that are not yet captured have this status.
- **Awaiting Fulfillment** — Customer has completed the checkout process and payment has been confirmed.
- **Awaiting Shipment** — Order has been pulled and packaged and is awaiting collection from a shipping provider.
- **Awaiting Pickup** — Order has been packaged and is awaiting customer pickup from a seller-specified location.
- **Partially Shipped** — Only some items in the order have been shipped.
- **Completed** — Order has been shipped/picked up, and receipt is confirmed; client has paid for their digital product, and their file(s) are available for download.
- **Shipped** — Order has been shipped, but receipt has not been confirmed; seller has used the Ship Items action. A listing of all orders with a "Shipped" status can be found under the More tab of the View Orders screen.
- **Cancelled** — Seller has cancelled an order, due to a stock inconsistency or other reasons. Stock levels will automatically update depending on your[Inventory Settings](https://support.bigcommerce.com/s/article/Inventory-Tracking). Cancelling an order will not[refund](https://support.bigcommerce.com/s/article/Processing-Refunds) the order. This status is triggered automatically when an order using an authorize-only payment gateway is voided in the control panel before capturing payment.
- **Declined** — Seller has marked the order as declined.
- **Refunded** — Seller has used the Refund[action](https://support.bigcommerce.com/s/article/Using-Order-Actions) to[refund](https://support.bigcommerce.com/s/article/Processing-Refunds) the whole order. A listing of all orders with a "Refunded" status can be found under the More tab of the View Orders screen.
- **Disputed** — Customer has initiated a[dispute resolution process for the PayPal transaction](https://www.paypal.com/us/webapps/mpp/security/seller-dispute-resolution) that paid for the order or the seller has marked the order as a fraudulent order.
- **Manual Verification Required** — Order on hold while some aspect, such as tax-exempt documentation, is manually confirmed. Orders with this status must be updated manually. Capturing funds or other order actions will not automatically update the status of an order marked Manual Verification Required.
- **Partially Refunded** — Seller has partially refunded the order.