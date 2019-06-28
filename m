Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5AB59493
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=Y/BRKRuoKBwWff
	xQVpCSDdUBoJmH8ctB7IplOvVGqtdGaItUsNRKyc0C9IIJNmNKnmkl+Dx35nXxA77UEldlBWx2e25
	rsUZbFeuDPrn8qhaOWSU2qBzHGbMGZ1lyQV1wg1TaryUbGSKjuiSQ440FHJUHWWhZHs5ib7XslP9s
	+7Uetxb5iKPHFu4wZYl+3poKBT0qa7QGPMF+TV/ACt/WmAxPJSWJDgFBeO6kO/JIAysGT7V3bv0fP
	hkBjC2ptmcq3KSPeZ8eP1X5yzSOg9Zhr9/vxYRR4divp8P7rRx7AnPkZG0U1yFRYVL9TjNZifvglk
	uNSCFik/tPJH2haF49Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl07-0002FO-1g; Fri, 28 Jun 2019 07:08:51 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgkzy-0002F2-9e; Fri, 28 Jun 2019 07:08:42 +0000
Date: Fri, 28 Jun 2019 00:08:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH][Repost] nvme-fcloop: Resolve warnings on RCU usage and
 sleep warnings
Message-ID: <20190628070841.GA22770@infradead.org>
References: <20190620201701.16833-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620201701.16833-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
