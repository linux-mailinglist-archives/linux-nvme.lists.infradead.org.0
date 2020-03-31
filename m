Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA09199A18
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1eQPC7VXs5HZ9kGipFsEBkCHXCfzLYhrAl4dPj1AQY=; b=AQoZtAAYGkP/ON
	ImTkoCg7GhhW79HHpl3noMDWXQemTxoHRNWCSbKyH5WKgL8ust/C6nyax1d1QFxGwBOrEGjNl7rIq
	2sub5vRNbYPWsXUMhNT8uC3lOR0dihdzSU3tUQY7ZQvOBX/os5FHjbqaMx9a6VoCK1TDpbtQT1eiH
	Bf4qDFsyCfYu597pya08ArthcsztA+UHBZk34CbpbolxUTYEbNDeLMujsp1QMJ8EbOEZRyFMNOUvC
	hCNPjh1Skko2jBjooaxuQeIU+FZGWsWEhotH86ZsdVY07tQ71+43KZ8wKkI4/PjnfVC1hUet7dpIy
	FgSu0nLnkkiQLaxtEq1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ5J-0004UB-U5; Tue, 31 Mar 2020 15:45:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJGsP-0008Dz-G2; Tue, 31 Mar 2020 13:24:21 +0000
Date: Tue, 31 Mar 2020 06:24:21 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alex Talker <alextalker@yandex.ru>
Subject: Re: nvme: Duplicate cntlid error
Message-ID: <20200331132421.GA27280@infradead.org>
References: <3cfc539a-07ba-3757-073e-dc81f9c0c824@yandex.ru>
 <2d02e844-5700-64e9-26dc-50b3958d2ab5@grimberg.me>
 <00875be1-c0bd-9b25-efa3-4236421678b7@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00875be1-c0bd-9b25-efa3-4236421678b7@yandex.ru>
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: maxg@mellanox.com, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 01:37:18PM +0300, Alex Talker wrote:
> but not in any MLNX OFED driver back-port. Does Mellanox has plans to
> include this feature in next release?

That is completely offtopic for this list.  Also please don't use vendor
forks full of broken code, your life will be painful and of no
interest for others.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
