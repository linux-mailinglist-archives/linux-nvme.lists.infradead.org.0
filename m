Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C03C32772
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 06:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mriHy77Wh5NSNjEpIOuj+InGEXCVuaQP7ykMi31M8T4=; b=dQWf066yoSAVHU
	Pv3GPnaPEC4V5s+W8HoBqOms+r+cOWvISY+Vz/D0q7pzP9HlvFKhpJsZ2oGA+GQFf2Pk8zQfb3oEP
	baof4dnvMJI5p/bZkstUrImCsRWzuwuxTlZBSzpYJfP5f/WsK1zC2A2ZylmwoyCROySB/03ByFz3t
	6+hga5AKlQdO2VW+y6/tuBx/BRj5mxmLkbwzS2M6QZUADcpwxeaRxt4+eubyHgGhcn5e4fd6qMDyj
	hkVWWKlMysMmAjL/3BJfh5ejh9PhvjDOWf8jqzsBLvt3k7EkJ9h5haWDP1DSVG5TPUaO7wZp6tB6T
	UEO9lkGG6dhRN9U26a7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeZh-0008Br-Ed; Mon, 03 Jun 2019 04:27:57 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeZc-0008AY-7A
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 04:27:54 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190603042748epoutp03f96579fd2710fa3beee2972ba1d1378f~klcqKsxp-2282922829epoutp03J
 for <linux-nvme@lists.infradead.org>; Mon,  3 Jun 2019 04:27:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190603042748epoutp03f96579fd2710fa3beee2972ba1d1378f~klcqKsxp-2282922829epoutp03J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559536068;
 bh=vOIRymff+XqkqOn5CyfGG8GC5IhV56gSHbo2ZhyJ7II=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=jMM8yDRu7OCponohEFlr92+FxdcBLt7MMurlook1Ba/jOo2W9VvVirNyPDXeO9x4/
 GIEdROlEe16cFsOeGNsM12N6D/+yCDNHAE++HgH+aICVBGze8z1p1qlZBlCsBv9ayD
 ffQKwb85IFIqWA0TuZMT/TXt8lDahzkDYeHECFV0=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190603042745epcas2p290000e04afbd481ea0cfa5b81385abae~klcnsL8IN1120611206epcas2p2M;
 Mon,  3 Jun 2019 04:27:45 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-59-5cf4a1c19fff
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 92.76.04195.1C1A4FC5; Mon,  3 Jun 2019 13:27:45 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme-cli: add default value for nsid of write-zeroes
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <bfac4b78-937c-42e8-1be1-f9a81ad22ab7@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190603042744epcms2p820c9606f5f6cc97f621d060a8bedc926@epcms2p8>
Date: Mon, 03 Jun 2019 13:27:44 +0900
X-CMS-MailID: 20190603042744epcms2p820c9606f5f6cc97f621d060a8bedc926
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNKsWRmVeSWpSXmKPExsWy7bCmqe7BhV9iDL41cVpMOnSN0WL+sqfs
 Fr86uS3WvX7P4sDisXPWXXaP8/c2snhsWtXJ5rF5SX0AS1SOTUZqYkpqkUJqXnJ+SmZeuq2S
 d3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QRiWFssScUqBQQGJxsZK+nU1RfmlJqkJG
 fnGJrVJqQUpOgaFhgV5xYm5xaV66XnJ+rpWhgYGRKVBlQk7GxhmX2AseMVWsXfWLvYFxIlMX
 IweHhICJxNcfCl2MXBxCAjsYJdbcfMgIEucVEJT4u0O4i5GTQ1jAU+LWnTVg5UIC8hI/XhlA
 hDUl3u0+wwpiswmoSzRMfcUCMkZEoI9RYu6iw0wgCWYBZYlvC7exgNgSArwSM9qfQtnSEtuX
 b2UEsTkF7CX2rm5lhIiLStxc/ZYdxn5/bD5UXESi9d5ZZghbUOLBz92MEOdLSNx7Zwdh1kts
 WWEBcoKEQAujxI03a6Fa9SUan39kgfjKV+LIES8Qk0VAVeJIkyZEhYvErNOT2CEOlpfY/nYO
 M0gJM9CH63fpQwxXljhyiwWigk+i4/BfdpiXdsx7wgRhK0t8PHQI6kRJieWXXrNB2B4Sf9+C
 TAcF8U5Gie0Ln7BOYFSYhQjlWUgWz0JYvICReRWjWGpBcW56arFRgSFyvG5iBCc8LdcdjDPO
 +RxiFOBgVOLhncH+JUaINbGsuDL3EKMEB7OSCO9Ks48xQrwpiZVVqUX58UWlOanFhxhNgd6f
 yCwlmpwPTMZ5JfGGpkZmZgaWphamZkYWSuK8m7lvxggJpCeWpGanphakFsH0MXFwSjUwMuS9
 XGB1NGf2LCbtI+sXfO43a545t/TvNg2jTTvfr5C/zP9osqJXldB8jwjuTH/5pWd/J20825Zv
 rrUof3KA1defieHV5eVtvIWiBe/2v/yg9Hr92YqWaUbzprrPXac8j8HMc//pReukrvbYm07y
 Ld+/pXOedtYS92jWuEkJTK9i7p06GVQVp8RSnJFoqMVcVJwIAKpxeNCOAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190602071216epcas3p254daea15ecd90e3ddbfa3ac7c530bd1f
References: <bfac4b78-937c-42e8-1be1-f9a81ad22ab7@grimberg.me>
 <20190601070003.20142-1-minwoo.im.dev@gmail.com>
 <CGME20190602071216epcas3p254daea15ecd90e3ddbfa3ac7c530bd1f@epcms2p8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_212752_586525_331262BC 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This is implicitly set to 0. You should mention that you add this just
> for clarification, and its not fixing a bug.

Hi Sagi,

Thanks for pointing it out.  I should have made the commit more in detail.
As you mentioned, the ommitted field members are implicitly initialized to
zero by the C99.

I think it can be ignored here.

Thanks :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
