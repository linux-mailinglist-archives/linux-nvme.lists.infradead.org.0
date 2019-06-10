Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75F3ACF4
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 04:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dya+bLUPdk+g+2vStRT5riUHAOPFl7+smcA/edWc23Q=; b=nr7jx45F8orp88
	brijRs/0vO2QUjmYz+7EZrI1cVP9+cSuySNmkU1rNfGpGXJ/4V3YBylPb3HoMXc8wcTFzaNnylQZ1
	IVNgeAYI8MNcf2eA0GNnvsYQOiyDkpUT8d/fKKZpCZ9Hja29rXcyCGSsIcZoFqs3+XFIPhCIk4JUn
	CQ/uvyeOwCtGlETuSsr/a/pf21VDd2Z2ogwfUb43ZCeGfNfBBJoAKYOpUW3aVP2uhLp/kUhuLxOyK
	1SDuwd9brZKvprIN7HFx22h7SdXl68TCGg0qzVTuLskOx/jIyHB4lumhh5zI6pgRCfZlT5qnshv10
	MnUbhjfsk6iPJ+IR5S4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haA09-0001zJ-LV; Mon, 10 Jun 2019 02:25:37 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haA02-0001yq-RB
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 02:25:32 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190610022526epoutp012a101896bedcc5b10a2dbb1860c53558~mtS1F2_IR1549815498epoutp01k
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 02:25:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190610022526epoutp012a101896bedcc5b10a2dbb1860c53558~mtS1F2_IR1549815498epoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560133527;
 bh=NoLFXkeGCyUbmDl9YR6CUSfhUJ9E+3K2IdK6wZtUJfI=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=W3yCYmQ+1vxTACdQLwTl3xv0crBCjeY3MksalzIibV4snZHuVhgGDLiYcFAp108ly
 5UOLvFcMtghIJY9EbIkORbMw/N5uPPlTjzDDBQADjlflv80UMyZEsdpjTFlwHtUgWB
 2FY9bC6K/cL4OF3i5m6C5pLePvs9YZJM7ZSfZNfI=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.188]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190610022523epcas2p33419e7ee86d5255ab258126479d29f77~mtSyNXaSF0079800798epcas2p3b;
 Mon, 10 Jun 2019 02:25:23 +0000 (GMT)
X-AuditID: b6c32a47-14bff7000000106e-a0-5cfdbf92837a
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 01.E9.04206.29FBDFC5; Mon, 10 Jun 2019 11:25:22 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
From: Minwoo Im <minwoo.im@samsung.com>
To: Ming Lei <ming.lei@redhat.com>, Minwoo Im <minwoo.im.dev@gmail.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190610015155.GD26551@ming.t460p>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
Date: Mon, 10 Jun 2019 11:25:22 +0900
X-CMS-MailID: 20190610022522epcms2p26bc1b339680476ac6d81050045545f44
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ1hOgg1Ywt4rA/UIW6YyhQpDkbcIzWioqIPpglOYARit3Ra
 ERMDxh0kImpAomIMAdSICihlUeIILlE0ETXWSOUBJC6A+GAUbbTDlOjbd2/OOf//n3tJTH2W
 0JK5NhfvtHEWmpiM374/j9WXdfjNTHeHjv3T/oBgL1/tUrBl4mvEVtUMKFnx1AEFO3YsjK3/
 PIIvV5pOHhhWmloqe5Wm576buKnhyjHC1FhdYGrzFhKmkbuviDTldsuSHJ7L4p063pZpz8q1
 ZSfT67ZkrMowJjIGvSGJXUTrbJyVT6ZXp6bp1+RaAn5o3W7O4g5cpXGCQMctXeK0u128Lscu
 uJJp3pFlcRgMjgUCZxXctuwFmXbrYgPDxBsDlTssOZ19TSGO+pA95cVjykJUgRehUBKoBCh6
 3oMVocmkmvIgqO5qDBxIUkVNBb9HI6GG2gRvHtklVFPR8OMTI3VqqHkw3PY0RGKCmgOFZz6N
 T4ygUmD/heu4NBGjHiLo6/tKyFIqqDgyEJSdAc21t5DEoRQDL3sPB2siwXt1SDnBIw+qkMwR
 cMjXjck8Ffp+tiHJD1AAvuGlMhZAUx0ryQJ1EMGbL9eCrXGwf3AUl0OtB48YLiFOzYIndevk
 itXQ8q163BgWCNg8dG58BVgg4fXWOHl4DHS+DVZMgaP3/cqJSJ4L/QqZY2BUFIMWp0Pti8/B
 SCboKhlUyBvuRVDir0KlSFf5b8mV/wlX/hO+iLArKIp3CNZsXoh3LPz/XRvQ+LeMTfGg289S
 RUSRiA5XwUq/WR3C7RbyrSICEqMjVENdv81qVRaXv5d32jOcbgsviMgYiH8S00Zm2gOf3ObK
 MBjjExOZJCNrTIxn6WmqhjCvWU1lcy5+F887eOdEn4IM1Rai4sMDebPTS73EzJo778t/bZwb
 PUlXv/V9Y0KT2On7UODZ6a06n0reqNa3zr9lL0ovMG943blmhafx4tjpWLdaUztNe+J4R0l0
 7OOoJN+9GXmRB6O612qShxKY0vbizT2QbulfVrZPhX9/9rHHOqLXMqtmvmMvbQor3vbR75+l
 TemgcSGHM8RiToH7C6kTb7CsAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190610015241epcas3p2a021735345864364cb7f8c6aded4685d
References: <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_192531_363917_D477B223 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> However, the check is valid, which shouldn't be nop, so could you fix
> the check instead of removing it?

Hi, Ming.

I don't get what you really mean here.   What do you mean "the check is
valid"? I don't see any valid checks in queue_count_set(), not just for
check for the failure by kstrtoint().  I think current code is just checks
the nr_cpus and do nothing after.

Instead fixing this check inside of this function, I have posted the next
patch in this series to make sure the number of irqs requested not 
exceed the num_possible_num().

Could you please have a look the next patch in this series ?

If I missed something here, please let me know.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
