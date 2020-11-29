﻿namespace Sprint.Models
{
    public class OrderItem
    {
        public int OrderItemId { get; set; }
        public int OrderId { get; set; }
        public int OwnerUserId { get; set; }
        public bool PhysicallyOwned { get; set; }

        public virtual Order Order { get; set; }
        public virtual User OwnerUser { get; set; }
    }
}
