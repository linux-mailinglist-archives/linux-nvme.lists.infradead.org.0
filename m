Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47419EA7E0
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 00:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcPxhjCBoWwwgPrxgTlFlw9p815RlSS5PfklTkn49a8=; b=Aozc7ucXY/DxjQ
	Q3r74GYbNIWgslWZKISGh42oDcu8rkSDNWehqioENZ3F8uGShbk7E8nU5TtR/J3JmMTEphohVkWvB
	wkSvWekVmK79qiDnxXtIJh6VDysmwsje/7NNIyavogr3eBn4I/y8VNja0UfdFmfOZyfp5xmAbcl2l
	0Uu3zaoWKIpydRIgG9TCUloshQiuFySu2HXCIBAjxqe5/7hOA2Ykc54zplGUYPlnm9bDIosqZhIA5
	nKHhpQ33158Q4NMelJUpRGCjohWhAiYHUA8yVSWvZwbQIL1ZG0eKFtHCXJ1nkeb1t54Uoh9BmUTzD
	XsEQb8+hXlku1675vGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPxZV-0007aH-T6; Wed, 30 Oct 2019 23:40:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPxZR-0006cV-MX
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 23:40:10 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD7D52067D;
 Wed, 30 Oct 2019 23:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572478803;
 bh=zIpCpX18EViyYAwI9prXDjLe8cI6IaLRn0LhHeTmvMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hQpGx8LrZpxqOKsNedE6NmyCc3P1+d1+zL/brU8jrEsgDSF/isoxb91xODzhisSN7
 NZFdYZCesXlVQmSD5Q5CjhJsaEzsXgb9rZEym5oYS+7qKBQEjSvpjhbBVouiJO2d3U
 xysj7ns4CCtM5n/9hCFQIrMsT7PJczCPlOW0674E=
Date: Thu, 31 Oct 2019 08:39:56 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme: Fix parsing of ANA log page
Message-ID: <20191030233956.GA18025@redsun51.ssa.fujisawa.hgst.com>
References: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
 <20191030142908.GA14551@lst.de>
 <BYAPR04MB5749C7095DA29A52C1D0336286600@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749C7095DA29A52C1D0336286600@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_164009_763651_4D489FC2 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "axboe@fb.com" <axboe@fb.com>, Prabhath Sajeepa <psajeepa@purestorage.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 07:55:44PM +0000, Chaitanya Kulkarni wrote:
> On 10/30/2019 07:29 AM, Christoph Hellwig wrote:
> > The only thing this changes is that we now also execute the check
> > for the first entry parsed.  But the log size should never be so small
> > for this to matter.  Can you explain what problem your are trying to
> > solve?
> >
> 
> I had hard time finding out that scenario.
> 
> Prabhat, can you please explain ?

The scenario should only apply if the controller reports an invalid
nanagrpid of 0, which spec disallows when ANA CMIC is set. We're not
validating nanagrpid compliance though, so this "fix" should only help
with broken controller implementations.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
