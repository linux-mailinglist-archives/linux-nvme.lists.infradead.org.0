Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346431C1C4
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 07:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjaqp4xxuA2nmzudfB5v6uPqRopMcWBwVhXyry9rH+M=; b=nETi8ICOFqor7W
	OO/9FyMB4Dlm7JUWWp+SvQGDgYyV7goAFWSpiCui1mHXCM6jRGEXdEjyYCExdT9WEkR17WhmGMvkP
	sp3FerOJZc0PWu2JpNuTA5JJh+fINMrNLU0y4vEK6qCP3l7iJPN3iVhZ9MS6tgv9sY6RflGIjKW3e
	AYpDxhXPI7icX7SfoIUo+0z0pgAHwTJzKtiKGhXa72MB9H6pcbWwpn7aARjx+ahaLeED+ATcEKq+L
	PdAgwf2acYnJJEzzTXBJC/nXGWLO2jVBRGwsa+DDGOYXRg6BPayaAJZHoUCyqM9FN+YkgolxZdAzb
	DfW5wPBj/u3Rcao5p94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPrz-0005BS-6H; Tue, 14 May 2019 05:20:55 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPru-0005B3-C4
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 05:20:52 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4177C68AFE; Tue, 14 May 2019 07:20:28 +0200 (CEST)
Date: Tue, 14 May 2019 07:20:27 +0200
From: Christoph Hellwig <hch@lst.de>
To: Adam Carter <adamcarter3@gmail.com>
Subject: Re: PROBLEM: call trace triggered in 5.1.1 in
 drivers/nvme/host/pci.c, 5.0.11 ok
Message-ID: <20190514052027.GB6294@lst.de>
References: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC=wYCGgPQPjUUjQTZh4H7b8WRQFGmbKCBRAq75g1BXjBR0L0Q@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_222050_562911_A382CA71 
X-CRM114-Status: UNSURE (   7.17  )
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
Cc: keith.busch@intel.com, axboe@fb.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Adam,

thanks for the report!

> [  145.788972] ------------[ cut here ]------------

Actually despite that "cut here" marker the most relevant information
is just above that.   Can you just then the full output from dmesg?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
