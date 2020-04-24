Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2E41B6EA6
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 09:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cjJAbEKBz9NttwIPsRfZS9YjYsdnb28fvz+Rtkk768=; b=ZRy8Bod+z/PwIt
	UUoJOa+CPJQzLMAwRqnhLHIvD+7A2Xcgaqbwbbx6dOrHcrcZIrGSRhIXE8Y5t0zL24APbxPL2kTLb
	ulu/zplM0c04xyHWHkeWcc4KIj31CCbUoeZcUBAguUA+YFLdJUDmp/XbtTtStUV6A2NNhIDMn4jii
	6JFYOWOtp7e6uxi2wLzLKMwpXuQT6PsrUwehM6xC+0QelZNAvR5PlzSXM9oxCwB2fucKsCK553oC7
	SDCZWYBL9qLgyEQWmWa0hxi/+NxFBcgMMjHqADCrdYGE3eASbbWajBfmBS406z5KP8isMYeiuEkgx
	LlhvdbgDWIQHbI6wvu1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsSw-00020J-5U; Fri, 24 Apr 2020 07:09:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsSr-0001z8-5n
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 07:09:34 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 73FD368CEE; Fri, 24 Apr 2020 09:09:30 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:09:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 08/17] nvme-rdma: add metadata/T10-PI support
Message-ID: <20200424070930.GC24059@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-10-maxg@mellanox.com> <20200421122030.GI26432@lst.de>
 <688ec4ba-78e8-0ba3-9ee9-3c19b3e7b0c6@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <688ec4ba-78e8-0ba3-9ee9-3c19b3e7b0c6@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_000933_365737_7232D6C1 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 12:22:27PM +0300, Max Gurtovoy wrote:
>>> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
>>> index e38f8f7..23cc77e 100644
>>> --- a/drivers/nvme/host/rdma.c
>>> +++ b/drivers/nvme/host/rdma.c
>>> @@ -67,6 +67,9 @@ struct nvme_rdma_request {
>>>   	struct ib_cqe		reg_cqe;
>>>   	struct nvme_rdma_queue  *queue;
>>>   	struct nvme_rdma_sgl	data_sgl;
>>> +	/* Metadata (T10-PI) support */
>>> +	struct nvme_rdma_sgl	*md_sgl;
>>> +	bool			use_md;
>> Do we need a use_md flag vs just using md_sgl as a boolean and/or
>> using blk_integrity_rq?
>
> md_sgl will be used if we'll get a blk request with blk_integrity (memory =

> domain).
>
> use_md will be responsible for wire domain.
>
> so instead of this bool we can check in any place (after prev commit =

> changes):
>
> "
>
> if (queue->pi_support && nvme_ns_has_pi(ns))
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 req->use_md =3D c.common.op=
code =3D=3D nvme_cmd_write ||
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 c.common.opcode =3D=3D nvme_cmd_read;
>
> "
>
> And this is less readable IMO.

It would obviously have to go into a little helper, but I really hate
adding lots of little fields caching easily derived information.  There
are a few exception, for example if we really need to not touch too
many cache lines.  Do you have a git tree with your current code?  That
might be a little easier to follow than the various patches, maybe
I can think of something better.

>>> +	if (blk_integrity_rq(rq)) {
>>> +		memset(req->md_sgl, 0, sizeof(struct nvme_rdma_sgl));
>> Why do we need this memset?
>
> just good practice we took from drivers/scsi/scsi_lib.c.
>
> It's not a must and I can remove it if needed and test it.

I think (and please double check) that we initialize all three fields
anyway, so the memset should not be needed.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
