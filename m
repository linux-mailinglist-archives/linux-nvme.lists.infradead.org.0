Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81523ADC5
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 05:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAkmyEvLKmx9Gf7sSoVwploIC5kAbbmDsqT/xALGxAk=; b=dCYvYaXzZ168c7
	5gVk4mxwCithAlUXtvKIZlvbTl2kvC24rUIp8G41zzjDS5bmQ1hSDlmnu5fNhraiU2/1IAJ5Lt+cS
	oUibdy39qEPon+EzEw6hmHcJdzSj+UdtBBmxSDGnxZM9psTPc9FOcplqjNizWjoTine0SmG5z3QRz
	nLtP9LJHoy+Jy1QMEcybjOI0an3oi+VBVHcL/8nZvisoqf7Mb57Z1ZwPSp7iZuVVc1eXrGU1VXVZ9
	dY1i8r7ReknHF5aED430Xo/7UmOxWNVax0vknWId4AR63LwtZ8omMgcIEPT/Trb4KMi83Y8USE8nx
	lGFq+AN4feIP45M0au3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBMM-0000cX-7G; Mon, 10 Jun 2019 03:52:38 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBMB-0000cA-RA
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 03:52:30 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190610035224epoutp04ddbc73c9b475d06382473628928cebee~muewkK57C0683306833epoutp04Y
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 03:52:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190610035224epoutp04ddbc73c9b475d06382473628928cebee~muewkK57C0683306833epoutp04Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560138744;
 bh=oPzm1/j8ypjMav0Lvz5U+hoAWiuU7cypXYrPfl3eR68=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=JRBPNn46PqbYr/juSVLL70i7kMBWjRG6bACYD6ni/KnmAQ6MnI8fJPzsEcz/mfZSq
 Qt6QTBw5zUkQdBPEjWbvQmp023VCCfOXmUVbSHBobeu83syQCuK/WuJr7LxFFcBmNT
 sEKOAlngxtfOihf77yGFmL03HRWQvKNVyXtILXEE=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.190]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190610035221epcas2p3849ff867f7061b66fe82116360fc68e5~muet7fq8n1240012400epcas2p3a;
 Mon, 10 Jun 2019 03:52:21 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-44-5cfdd3f4d8ae
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 D3.2E.04207.4F3DDFC5; Mon, 10 Jun 2019 12:52:20 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,
 poll_queues
From: Minwoo Im <minwoo.im@samsung.com>
To: Ming Lei <tom.leiming@gmail.com>, Christoph Hellwig <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <CACVXFVPm4v1-9Sta3C0oN3YdTQhGQL1EVDwPBmA4i28SMHJAaQ@mail.gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190610035219epcms2p152ffea1ffdda63bba9a901dd42979a11@epcms2p1>
Date: Mon, 10 Jun 2019 12:52:19 +0900
X-CMS-MailID: 20190610035219epcms2p152ffea1ffdda63bba9a901dd42979a11
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPJsWRmVeSWpSXmKPExsWy7bCmue6Xy39jDK4sl7b4v+cYm8XK1UeZ
 LCYdusZoMX/ZU3aLQ5ObmSx+dXJbrHv9nsXi/Y/r7A4cHhOb37F77Jx1l93j/L2NLB6bVnWy
 eWxeUu+x+2YDm8f7fVfZAtijcmwyUhNTUosUUvOS81My89JtlbyD453jTc0MDHUNLS3MlRTy
 EnNTbZVcfAJ03TJzgI5SUihLzCkFCgUkFhcr6dvZFOWXlqQqZOQXl9gqpRak5BQYGhboFSfm
 Fpfmpesl5+daGRoYGJkCVSbkZHxbdpSl4BJfxd9bHcwNjCu5uxg5OSQETCQuPz7H2sXIxSEk
 sINR4vKEiYxdjBwcvAKCEn93CIPUCAsESZz+cYoZJCwkIC/x45UBRFhT4t3uM6wgNpuAukTD
 1FcsILaIgIvEu4cLwWxmgXeMEmdmMEOs4pWY0f6UBcKWlti+fCsjiM0pEChxctZ1qBpRiZur
 37LD2O+PzWeEsEUkWu+dhaoRlHjwczfYlRICEhL33tlBmPUSW1ZYgDwiIdDCKHHjzVqoVn2J
 xucfwdbyCvhK7J+5nBWknkVAVeLFrnCIEheJ3nndjBAXy0tsfzsH7FlmoA/X79KHmK4sceQW
 1E98Eh2H/7LD/LRj3hMmCFtZ4uOhQ1A3Skosv/SaDcL2kDja+5wJEsSXmCWed75knsCoMAsR
 yrOQLJ6FsHgBI/MqRrHUguLc9NRiowIT5IjdxAhOnFoeOxgPnPM5xCjAwajEwyvh9DdGiDWx
 rLgy9xCjBAezkgjv26N/YoR4UxIrq1KL8uOLSnNSiw8xmgK9P5FZSjQ5H5jU80riDU2NzMwM
 LE0tTM2MLJTEeTdx34wREkhPLEnNTk0tSC2C6WPi4JRqYGRv3Nv3QO2LyslHbhESq351BVQu
 rJh2axFPAMfbFx/TVgpY9WWGMyzM+x91nP3+F3ermB/Ba6Pc5J8pv/U+lNRwennQjNjjeaFT
 XnTdObklUfGk1LfPfZt2zajbbKwpE7fjY2iqatcyboFfuk+uNorNjzoe8Heu7UymAkH7sKvp
 PB8D80/MblBiKc5INNRiLipOBACbzattsgMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190610015241epcas3p2a021735345864364cb7f8c6aded4685d
References: <CACVXFVPm4v1-9Sta3C0oN3YdTQhGQL1EVDwPBmA4i28SMHJAaQ@mail.gmail.com>
 <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
 <20190610024127.GE26551@ming.t460p>
 <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_205228_207809_39E72DBE 
X-CRM114-Status: GOOD (  27.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> > > > > However, the check is valid, which shouldn't be nop, so could you fix
> > > > > the check instead of removing it?
> > > >
> > > > Hi, Ming.
> > > >
> > > > I don't get what you really mean here.   What do you mean "the check is
> > > > valid"? I don't see any valid checks in queue_count_set(), not just for
> > > > check for the failure by kstrtoint().  I think current code is just checks
> > > > the nr_cpus and do nothing after.
> > > >
> > > > Instead fixing this check inside of this function, I have posted the next
> > > > patch in this series to make sure the number of irqs requested not
> > > > exceed the num_possible_num().
> > >
> > > I suggest to cap 'write_queues' or 'poll_writes' to num_possible_num()
> > > from the beginning, instead of starting with invalid number.
> >
> > Ming,
> >
> > Thanks for your review :)
> >
> > I have already tried to limit the number of queues inside of
> queue_count_set()
> > in [1].  But Christoph had suggested to limit the number in
> nvme_calc_irq_sets()
> > instead.  It might be my code was not really good at that time, but could
> you
> > please have a look at the mail thread below and give some advices for me?
> >
> > [1]  http://lists.infradead.org/pipermail/linux-nvme/2019-May/023868.html
> 
> Sorry for missing the previous discussion.
> 
> IMO, I prefer to the fix in above link. Cause it is the value of
> kernel_param_ops
> to make 'write_queue/poll_queue'  correct from the beginning. That is just
> like OOP's concept in which each method just does one thing. Then we don't
> need to bother nvme_calc_irq_sets() for verifying/fixing them.

Christoph,

What do you think about what Ming's suggested?  I am actually okay with the
concept that the function just does its own things.

It would be great if you can give some advices here :)

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
