Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DDA19A742
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 10:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctSlRXv9GDTJcXVunKlg+DEWv+P4QEJD/mTdGU7XXDw=; b=ZAllRtFwxU3IwK
	uoDXM95MrR6ay8kuDN9RVLbPS5V+qj3EA4pXKxOwK+I9xYecnSQ9l65Elj7awEtaxpE/OCZKSjAej
	N5q98PWLmEY7t0Rd78LOJ91UbwkJO+CI2JeUVAeg06sUiCDyoiumGtmYO0o7hQ7i6Eq5YZ9IoUq2e
	S2nmJ0wq1B7Qf5llqSC07LDZGIN5Q9E/FXJycyJJgjdahXb8jdJTx6IzoIsTa5zl81hzRe7W6oHSC
	417Py2u/SjzY1v1DMrWIvpvv/J0hJuMkXrXnLtZ5ucIpaRPwgEUomTbAk1Ut9cO5TELsbBN1bYQn7
	srpRrmXo0GX1vrCuEg9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYiV-00077S-SE; Wed, 01 Apr 2020 08:27:19 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJYiS-00077A-E3; Wed, 01 Apr 2020 08:27:16 +0000
Date: Wed, 1 Apr 2020 01:27:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v2 00/26] nvme-fc/nvmet-fc: Add FC-NVME-2 disconnect
 association support
Message-ID: <20200401082716.GA26058@infradead.org>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
