Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F59CCDFF
	for <lists+linux-nvme@lfdr.de>; Sun,  6 Oct 2019 04:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdBE+apPR0i6M2bCp6RfrSZKQLz0Hl7H3jb66gREIY8=; b=psV6WSAV/bwFhk
	ngC+0J3mBzNCFb6ZRP1lTKCIjcMDiQdj3RVpY+Qo+PoByv4pYPuTQ6fqEm9QUybWtBLQkXvIFzmUZ
	blsaGo584WrsjbB1LhduAIUa0U15WAIQ9oTniyLC56Fw0DJFj1BtbUqBLWwPjsHKoVNZ/fLPmFmL1
	klLEOo72f8pmVEYoa7jt0vuV8L6iH2mgsGzgBgEOQvec6Jm3CrLRaBQfsOK+qlyXP7RfXS8YhLx1s
	Jqx2ibJcqW94uDos3l+jEmGqZp1ji+f6dozPBsdd0/CUiHEhfKiAHMewnyi/5NbT0j7K+u/ZxibYR
	4oKCZ0gQGZr4Ni82b3ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGwl2-0005Fj-6L; Sun, 06 Oct 2019 02:58:52 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGwkk-00055X-EG
 for linux-nvme@lists.infradead.org; Sun, 06 Oct 2019 02:58:36 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191006025830epoutp02953e2452bc7ea42bdc62288c6079f058~K73YkNb7b0676006760epoutp021
 for <linux-nvme@lists.infradead.org>; Sun,  6 Oct 2019 02:58:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191006025830epoutp02953e2452bc7ea42bdc62288c6079f058~K73YkNb7b0676006760epoutp021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570330710;
 bh=x64E9dRaEIy9HHp3bGIUi1bsF8KIuHygnptv68Fd6nw=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=dJ2NXkWPOe47tXEi3vUnBGrermqzjJevmOaqbmbISYqL4IkrHoxxLRDEl6JtQfl2j
 3WNsxJKGQxtYuO/OWTkU2nKBExRu3lmiUs0K9Em7NQPY8PfYaShiYzM1X8e2mU2CIf
 jQy+7yKt7vruM/h13hnu3NJkCCloPMnHwPk3Endc=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20191006025829epcas2p367190ef54467e1152238653b251f7919~K73Xj2MmP2273322733epcas2p3B;
 Sun,  6 Oct 2019 02:58:29 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.184]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46m7bS48LNzMqYkV; Sun,  6 Oct
 2019 02:58:28 +0000 (GMT)
X-AuditID: b6c32a47-5a5ff70000000fe6-eb-5d995854fa78
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 FD.9C.04070.458599D5; Sun,  6 Oct 2019 11:58:28 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme: look up proper namespace in NVME_IOCTL_IO_CMD
From: Minwoo Im <minwoo.im@samsung.com>
To: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190929191822.GA2995@lst.de>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20191006025828epcms2p39e137f0294e73a53bbc9624d919c5a0d@epcms2p3>
Date: Sun, 06 Oct 2019 11:58:28 +0900
X-CMS-MailID: 20191006025828epcms2p39e137f0294e73a53bbc9624d919c5a0d
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju8+xy1Bafc+WXUc0jdhN10zaPllEodiBDo4xhFzu4w7R2Y2dK
 1o8GFqU/RLuQLcnATJxW3tKpQbZsUJlGP4qVmkmaKSomiJVm286k/j08vN9zeb8Xx8S3BaF4
 nt7MmPS0lhAE8Nqeb1dEHVHdOiHreRxGLj9xCsi6+hd+5FXHe0BW3R8Vkr+KA8mx190Y+XBy
 hrdXSJUXTQupDuugkOofauJRzbZiAdVy7wLV5bIIqNJWG8gQZml35zK0mjFJGX2OQZ2n1yQR
 Bw5nJ2crlDJ5lDyBjCekelrHJBEpaRlRqXladx5CWkBr891UBs2yRMye3SZDvpmR5hpYcxLB
 GNVao1xujGZpHZuv10TnGHSJcpksVuGePKXNbVsoBcZ5/tlRVyWwgLe8EuCPI7gTNVo/8EtA
 AC6GdoCuD434lQAcF8EgtGQP9swEQwr118xiHloMN6OFCRlHb0fTXb18DxbArchyY8IrKYGn
 0dWmT8AjicE6gHrnJgWclwhVXB71+W5A7bWPgUfTH0ailyOHOHotctVPCVfwjLMKcFiCLg29
 wTgchIZ/dvn4UGR/1M33yCBYBNBiMkdbAPpQFcLhePT7c5c3pggeRB31NV4ZHoxApdYHPpkU
 ZKte9CbD3A3bpyq9bTF3xUedMZx6OOr56JtYg648XxKudLLf+erH4XA063D4Qq5Hte9WelPo
 5asG3457AZqdcYEyILX+W7P1P2PrP+O7ALOBdYyR1WkYNtYY9//PNgPvYe7YbwdtfWkOAHFA
 rBbB3ooTYj5dwBbqHADhGCERbapxUyI1XXiOMRmyTflahnUAhbt/ORa6NsfgPnO9OVuuiFUq
 ZQkKUqGMJYkQUXOg67gYamgzc4ZhjIxp5Z0f7h9qAVvCsvrPqsTzJyNauuPHldIBfOxe7fl9
 zoupUyPEj9LwDOd5ZefwBJNzpXV27Nj0tqdU496ma3t6+tTLXxI218taj42PZCaKDmU2kGGF
 8koVHGgd0KSnx92kvu0KixrMdNo2Ls6lPjtaXFa9HJTcsjVSsmqpswHqVH/iD3wvYRsJHptL
 y3dgJpb+C1ta/dKuAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190929191846epcas5p10576f659553b0a1f189dcdf0cefb5c97
References: <20190929191822.GA2995@lst.de>
 <20190928021500.31382-1-minwoo.im.dev@gmail.com>
 <20190929173654.GA1484@C02WT3WMHTD6>
 <CGME20190929191846epcas5p10576f659553b0a1f189dcdf0cefb5c97@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_195834_848907_B5FD79F2 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: minwoo.im@samsung.com
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > > NVME_IOCTL_IO_CMD is deprecated because IO request for a chardev is
> > > unsafe.  But in case userspace gives nsid, kernel should at least look
> > > up the proper namespace instance instead getting the first entry and
> > > checking whether if it's the last one.
> >
> > This pretty much defeats the purpose of discouraging using this interface,
> and
> > possibly opens security issues if someone can issue IO to a device they
> > shouldn't be able to access.
> 
> It also breaks any old user relying on the fact that the nsid is
> ignored.

Oh Yes, It breaks the purpose for the deprecation. Will not try to use I/O
Weith chardev with nsid specified which can give improper nsid  from the
userspace


Thanks, Keith and Christoph

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
