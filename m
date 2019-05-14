Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88171C2B0
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 07:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8akSJa0VdFZBl210PsX22S6oOuSIYWIdXnQWEic8nQ=; b=qEQUmGw2ov99sm
	1+ISrqcj6pflDG0ye/XCGJeZIdHsKnOqEMyWDOd3cXTEYXEsXbWmSDX2/7wTtU1/V+vlS6MGV2MlK
	4cRHKCcETBncI6M1STsYhZvyfj3a2mGQwDq7xlcteaRd0bxHsqsheuChwDl8WE4zLfzdP7eZzkUBz
	iNgcfqY7pKMa4gmxywMOX2M7h+MCQI9sUpbxZbVSoohribaPZobHU1nWzTCy3FVHvseokR8OqFhwM
	pIYRXfDekZteKJ5QIkngqkUlTjzFSv1ehsNy0bko9txrX6RYNfPVNFFP/gXi19yiqmHxjIBXRUgFF
	pNOXydPvczoxrcSH4IBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQSo-0001q5-Tx; Tue, 14 May 2019 05:58:58 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQSj-0001pe-Rv
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 05:58:55 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D0F9B68AFE; Tue, 14 May 2019 07:58:32 +0200 (CEST)
Date: Tue, 14 May 2019 07:58:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Adam Carter <adamcarter3@gmail.com>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514055832.GA6843@lst.de>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
 <20190514052027.GB6294@lst.de>
 <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC=wYCFhKR5YrAwL1agz=USg3DAkx5BtXAfv64nOfTrwTji40Q@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_225854_184744_77663080 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: keith.busch@intel.com, axboe@fb.com, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 03:52:37PM +1000, Adam Carter wrote:
> How's this;

Better, as this prints the invalid sgls.  Not good enough yet because
it doesn't contain the early boot time information on what iommu
instance is used.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
