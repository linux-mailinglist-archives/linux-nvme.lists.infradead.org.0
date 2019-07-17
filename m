Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B442F6B5A8
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 06:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrxtJU7MQn2MguEBzED/qLihzuiIKM6I6ZAFkhMBXBc=; b=o0bU3hu+NVUNXh
	C/6LBgRfevEn1I6usL08VG5RQSpDCKOf1Vrc1GVCdWZWoJPkRZLBSDEWI4Dwmy+08psxO1uN+APpH
	VRWeEIBFWkB23GJ+wA6wvN7vohMqT9bQTlwNww/ILSegic7lJmViWwaoR348TX9Dw8DPTUIx6BYD+
	c611baxwuBQQ5Ga0hjTY/6X7KquvUQ9/3/EyOQiSRNP22YyyMIalanfQ6yqkThrwLf/mu1JJIR3uq
	FHl38k4/qR930rC/A9uM2G1xdD92jvDPHipho0C/UwRVKL5ZNIPmdLqB1C9a9lu5m8HDvRYIx24dd
	6M7OGF/Mjs9l4P6kYwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbwr-0000J7-GY; Wed, 17 Jul 2019 04:53:49 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbwg-0000Iq-VX
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 04:53:40 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H4rTwG008383;
 Tue, 16 Jul 2019 23:53:30 -0500
Message-ID: <f4e552a8f9959ceed4e1348b899671b5edf8c3d7.camel@kernel.crashing.org>
Subject: Re: [PATCH v2 3/3] nvme-pci: Add support for Apple 2018+ models
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Wed, 17 Jul 2019 14:53:29 +1000
In-Reply-To: <20190717045000.GA4965@lst.de>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-3-benh@kernel.crashing.org>
 <20190717045000.GA4965@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_215339_164689_583B1E54 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 06:50 +0200, Christoph Hellwig wrote:
> > # Conflicts:
> > #	drivers/nvme/host/core.c
> 
> I thought you were going to fix this up :)

Haha yeah I was ...

> But I can do that and this version of the series looks fine to me.

Thanks !

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
