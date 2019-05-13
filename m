Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875E81B14F
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 09:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEowHHRjeXZHssgaUr7jS/DxJfODAjS0ymB/TAXjtCo=; b=hFJVPDMyAWvkyz
	U5MqtCTQ6T7XI51ZZN0X1cRfjIT3SePlJsyRLK6XDVrEI64qDcZm5KwnzGqy2zA5zp8XIR8ZP27Hq
	Er/UfFc5NfJSB7h/Q/QXFU+mwwXt2PWFQlU+XALBNp6s2Z6m7QxyWH+4liKoA9pxtbFYiNzraxPDI
	/zHm32iXPePdw1klLxYvIrSpP+nr1YRQCSWWB632UBo1sXk8ikG09zkv08i7BNgYYpeP78DN+aYdj
	aKSMKdVNRlUQGpDBfl1cE/t3XmrB5nXUwwHkFYfYFrcuJ6USn+d56HG9kRGr+Rqw/US2840LnSp71
	4KAUOI1VouU9DXXg4MQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5aY-0007BS-H7; Mon, 13 May 2019 07:41:34 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5aS-00078T-Ev
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 07:41:30 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190513074123epoutp0381aedd655b39373d222dfb7f6d5f5e74~eLisnQy5s0548405484epoutp03K
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 07:41:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190513074123epoutp0381aedd655b39373d222dfb7f6d5f5e74~eLisnQy5s0548405484epoutp03K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557733284;
 bh=Ly2+CtUHlh9VKjJj5l7H9wZwvMbrXkQCopgrlQk7ffs=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=G7woC0Qo4Zmvk6B3dAIOXdlwmY9gTDZSbpknpPWLk4Ai2OEBk/sjsqvrSqIHT/Fii
 gAv6zxsVLPWqq/I+ixGKXFVGQKylBWetU/ohW0b25CHtt8MtB2gUWWG4aAMd8GVdi5
 TVBxhWl4is9ALdvRVDSuI+QgrTQy34dKvYjtvD4Q=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.187]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190513074121epcas2p297d091ace7c5acb260a258db1aeff786~eLiqBrZVm0996009960epcas2p23;
 Mon, 13 May 2019 07:41:21 +0000 (GMT)
X-AuditID: b6c32a47-133ff7000000106e-a1-5cd91fa15cff
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.EA.04206.1AF19DC5; Mon, 13 May 2019 16:41:21 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 6/7] nvme-pci: trigger device coredump on command
 timeout
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Minwoo Im
 <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190513074120epcms2p54e3a031668274ac1ebace6c5edc0a3f7@epcms2p5>
Date: Mon, 13 May 2019 16:41:20 +0900
X-CMS-MailID: 20190513074120epcms2p54e3a031668274ac1ebace6c5edc0a3f7
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOJsWRmVeSWpSXmKPExsWy7bCmhe5C+ZsxBi//c1i8OtDBaPF/zzE2
 i5WrjzJZfNzwicXi3tEvTBaHPrlYXN41h81i/rKn7Ba/Orktnp0+wGyx7vV7Fgduj4nN79g9
 ds66y+5x/t5GFo/Fe14yeWxeUu+x+2YDm0ffllWMHv2921g8Pm+SC+CMyrHJSE1MSS1SSM1L
 zk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQdcvMAbpVSaEsMacUKBSQWFyspG9n
 U5RfWpKqkJFfXGKrlFqQklNgaFigV5yYW1yal66XnJ9rZWhgYGQKVJmQk7H/72HWgk/MFXPv
 9zI1MK5n7mLk5JAQMJFYd+wnWxcjF4eQwA5GibNnzwAlODh4BQQl/u4QBqkRFgiS+PR6FztI
 WEhAXuLHKwOIsKbEu91nWEFsNgF1iYapr1hAbBGB1YwSry5ZgIxkFljDJHHp5GdWiF28EjPa
 n7JA2NIS25dvZQSxOQXcJHqebGGHiItK3Fz9Fs5+f2w+I4QtItF67yzUzYISD37uZgS5R0JA
 QuLeOzsIs15iywqwtRICLYwSN96shWrVl2h8/pEF4itfiZ8HBUHCLAKqEjP2bmeDKHGR2Ljz
 Flg5M9CH29/OAQcCM9CL63fpQ0xXljhyiwWigk+i4/Bfdpifdsx7wgRhK0t8PHQI6kZJieWX
 XkNN95BouzmRCRLGJxklvi6fxziBUWEWIphnIVk8C2HxAkbmVYxiqQXFuempxUYFxsgxu4kR
 nGi13Hcwbjvnc4hRgINRiYd3x5MbMUKsiWXFlbmHGCU4mJVEeKMUgUK8KYmVValF+fFFpTmp
 xYcYTYH+n8gsJZqcD8wCeSXxhqZGZmYGlqYWpmZGFkrivJu4b8YICaQnlqRmp6YWpBbB9DFx
 cEo1MM54t/7y3YBju3ksM984v15UcP30/S6Pb7tZt5zPXeUwt5zNJfjgnl9Bi89k+1zUa8j4
 tyK+oKNiZ94LU9EbJ17Ni1tnXV+S0akp0SDAKeXcerAoUPCp5RyTJJXuC/O4ze+tMbBZPrls
 Q4yIYFx40qQ0ab+vZyZ0PV+hcCfZakKM/+eUKy6LLJVYijMSDbWYi4oTAd2nc+TKAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190512155533epcas4p110edff15ebf5b2efae32e43f0f10ab59
References: <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190512155533epcas4p110edff15ebf5b2efae32e43f0f10ab59@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004128_830933_42BE3FAF 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -static void __maybe_unused nvme_coredump_init(struct nvme_dev *dev);
> -static void __maybe_unused nvme_coredump_logs(struct nvme_dev *dev);
> -static void __maybe_unused nvme_coredump_complete(struct nvme_dev
> *dev);
> +static void nvme_coredump_init(struct nvme_dev *dev);
> +static void nvme_coredump_logs(struct nvme_dev *dev);
> +static void nvme_coredump_complete(struct nvme_dev *dev);

You just have added those three prototypes in previous patch.  Did I miss
something here?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
