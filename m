Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6904CA08
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 10:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bScuRg3JsgrvHJVS7goRtxNKbsJS8p3CFm+w2yHnIyA=; b=HC83cxHoOkAINn
	NdEPNo0Tpk2zt311zLAdaURQTCv66iCD5KKW5V1PiiZgu5zkCW604c2LaAgIXir5C/OfN9RWTyW4f
	a/2cDhjIQbZ0gM30Jz1BOidRWZWJOx08C4Zh0GaqYCFBcQiEv+Erd3X7qBeo9Ma4EUk8ny44xDrtD
	JmCfRvOyLjBt6Qg4dYId/+J+R/l/+N7Mkhkl0P2V5IdXsujVLUtWPacgeTdm5kAVwdoRm711ZKnah
	CbVVlCQ7fItJINEBVS2WAB4wUZoKo4zb5Rl/G7j0AKiy0B0zLE+jZfBMvu6QimGIXkUCRm8V7CC3u
	Txck4D66wNPhZTsbXpoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsr0-0000Kh-0y; Thu, 20 Jun 2019 08:55:34 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hdsqq-0000KP-Tp; Thu, 20 Jun 2019 08:55:24 +0000
Date: Thu, 20 Jun 2019 01:55:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-pci: code cleanup
Message-ID: <20190620085524.GB24540@infradead.org>
References: <20190608201632.8244-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608201632.8244-1-chaitanya.kulkarni@wdc.com>
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

applied to nvme-5.3 with a slightly reworded committ message.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
