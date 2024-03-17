package com.lzm.cloud.serivce;

import com.lzm.cloud.entities.Order;


public interface OrderService
{
    /**
     * 创建订单
     */
    void create(Order order);
}
