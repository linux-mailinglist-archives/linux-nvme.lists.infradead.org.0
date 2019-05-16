Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C111FFD2
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uxc0dhafHxoka5L7avXOxxqodZW/o9m7G0VLOs5kBxw=; b=k0TAoxpgdmZJjU
	PgOFN1UdqYYuCL9P2qajxdVSD5w04YfOaFDtSgPWr20sdDILBX5T8xDPHO6n92hCBRSUVZetFdKwm
	TJB+7O9mNrM0daSnyf1YIyRpUWyDz2AfGYHOtr/LqS7PlVxl1alxbKeN0U/YWqpxVPY/E6aTrVGKK
	2re437YzjyGwdcwzv0CAru+wOtEZbHOqX1P0BvtPs4ba2vPLSdJ3HYjoR9T2StFAa8EGFvitRIQ1L
	FQujymM3zQbe9RJlCmKauKewKsK0NQlGxDc5P/VnPsEfot53Ptd0/4I/Jf1LTMJruTqbw6XClaM29
	/SJMrgFvsixXSUl9bi4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRAAm-00015f-Vs; Thu, 16 May 2019 06:47:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRAAh-00014y-HM
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:47:20 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D58C868C4E; Thu, 16 May 2019 08:46:53 +0200 (CEST)
Date: Thu, 16 May 2019 08:46:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190516064651.GA30234@lst.de>
References: <20190515213351.22190-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515213351.22190-1-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234719_726502_C63E4CDE 
X-CRM114-Status: UNSURE (   8.63  )
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 03:33:51PM -0600, Keith Busch wrote:
> So here's a solution that no one will like: pull subsystem and controller
> instances from the same IDA so that there won't be any namespace block
> devices with a matching controller handle name. While this does nothing
> to clear up device relationships, this will force the user to think
> really hard about what they're doing and avoid such mistakes.

Hmm.  So we'll get:

/dev/nvme0
 - chardev subsys X ctl 1

/dev/nvme1n1
/dev/nvme1n2
 - namespaces for subsys X

/dev/nvme2
 - chardev subsys X ctl 2

/dev/nvme3
 - chardev subsys Y ctl 1

...

This should work.  Not sure it really buys us so much, though.

Btw, I wonder if we should have udev rules for:

/dev/nvme-subsys-$NQN-ctrl1
/dev/nvme-subsys-$NQN-ctrl2
/dev/nvme-subsys-$NQN-ns1
/dev/nvme-subsys-$NQN-ns2

I have to admit that since udev/systemd moved to github I can't
be bother to send them patches, though as it would require signing
up for that crappy service.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
