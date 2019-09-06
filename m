Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B6AAB206
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 07:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfb6ctGpYMZs/bADMG22po5JuZ+fEkXdlbCapwV6xZw=; b=jSJdZVUfmr86NL
	uPxxwT7/JgxP6keLL34NVz6v4TzCMuYAVMRwJhWVE8UrmCQtMzfEueuvLHZZc606JzLRYixOWir9I
	J3AC6xju1EPuC3nihr7SSG7N9BNsRwgKfklLbWhW5rLpapc/uwFwGVigUk6fXuuEuNgTkAePvQChf
	tdKZN7Ei4J1YZPHojsHhiE7yBJ/S/z69inqhJ374f86qhXG6elT2MOy1d9MsNX+vxyJjvj9zvA/jU
	7ur7X2GTFZqyvK/4nfxBzeIFqAq+cDtCGm5awucLQ5vEc4qCS/6RoLji8VUqyLpt1tQTmuvF1qSX9
	02NjF98y7tM8XSTyA48w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66ip-0002QN-DH; Fri, 06 Sep 2019 05:23:47 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66ik-0002Pl-Av
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 05:23:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7479268B05; Fri,  6 Sep 2019 07:23:34 +0200 (CEST)
Date: Fri, 6 Sep 2019 07:23:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 3/3] nvme: remove PI values definition from NVMe subsystem
Message-ID: <20190906052334.GA1382@lst.de>
References: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
 <1567701836-29725-3-git-send-email-maxg@mellanox.com>
 <882441fc-599a-21fb-9030-5208b3b671cc@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <882441fc-599a-21fb-9030-5208b3b671cc@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_222342_527564_2B751CE0 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@kernel.dk, keith.busch@intel.com, martin.petersen@oracle.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, shlomin@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:52:39PM -0700, Sagi Grimberg wrote:
>
>> Use block layer definition instead of re-defining it with the same
>> values.
>
> The nvme_setup_rw is fine, but nvme_init_integrity gets values from
> the controller id structure so I think it will be better to stick with
> the enums that are referenced in the spec (even if they happen to match
> the block layer values).

These values aren't really block layer values, but from the SCSI spec,
which NVMe references.  So I think this is fine, but if it is a little
confusion we'll have to add a comment.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
