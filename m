Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9246A66360
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 03:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm8ozkxiRRYzy6uibwvDr21RnZneYq5g/LnFpOJWqfM=; b=LLEpPq+xJ/ZF5v
	EutTtkXFMT3vb52JA3dv05NeQV3xPALOdiGy7r8OHEFHpcemyzy2r4bWD/5r1hrHApJcdJJBU9RI8
	Ov+nE6nTjFudGX87PHjAnaTTkk8BAuLTJ9lwT4xPsh7unpfGZ4bQ2XEjCZJ6KI2+i3nWk3KM3Ai2M
	eUFmuSBQVFmvHEXCWaCSyP8TU/n0PjkjoIt1xa3cpJznWLIZrmvNj0jzZZ1Fex0getah8VnEW1DjK
	PpBjhGmVA8bup0ugL3W6AA3bCEAIG2I5+O6vcW+M986bYzKponYpbbrX7t+qvPHb1N9mtyhHiEF/+
	eUoJj9fTFanoyMbGxQRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlkS7-0000ko-2r; Fri, 12 Jul 2019 01:34:23 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlkRt-0000kR-LZ
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 01:34:11 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190712013403epoutp022ada3d210944b73b951018d0d60fbd94~whPFxJGrV1433614336epoutp02p
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 01:34:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190712013403epoutp022ada3d210944b73b951018d0d60fbd94~whPFxJGrV1433614336epoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562895243;
 bh=rB9H3/K0vV6jy2YsLQeeEbomYfa5D9/LtsQgPZXFh6c=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=ojRfA4W4mrmhStSO06zTzogJMMeAfk77va9Hlx2OE4j/iWlYcu3+pXVBAUAidHnPj
 +StOAiyaiRMziAZOHjDptqAiOXAtEpNntseuWdUov9GLgtHtTDUl6UGci9ZFhudaP2
 rak3GUGT52CYcGDkGL+ac+mi31LTiZ4UbM+YJoyk=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.189]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190712013401epcas2p3ab76d30ab5e2439c5aa4852e17b4198f~whPEN49mU3035730357epcas2p3O;
 Fri, 12 Jul 2019 01:34:01 +0000 (GMT)
X-AuditID: b6c32a47-5a93e9c00000106e-88-5d27e38835da
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 97.ED.04206.883E72D5; Fri, 12 Jul 2019 10:34:00 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH rfc v2 03/10] nvme-cli: allow discover to address
 discovery controller by persistent name
From: Minwoo Im <minwoo.im@samsung.com>
To: James Smart <jsmart2021@gmail.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190712003140.16221-4-jsmart2021@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190712013400epcms2p1eb152f52850b0c93414ec239e67b1917@epcms2p1>
Date: Fri, 12 Jul 2019 10:34:00 +0900
X-CMS-MailID: 20190712013400epcms2p1eb152f52850b0c93414ec239e67b1917
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkk+LIzCtJLcpLzFFi42LZdljTQrfjsXqswcoL6hYrFrxntJi/7Cm7
 xa9Obotnpw8wW6x7/Z7FgdVj56y77B7n721k8di8pN6jb8sqxgCWqBybjNTElNQihdS85PyU
 zLx0WyXv4HjneFMzA0NdQ0sLcyWFvMTcVFslF58AXbfMHKC1SgpliTmlQKGAxOJiJX07m6L8
 0pJUhYz84hJbpdSClJwCQ8MCveLE3OLSvHS95PxcK0MDAyNToMqEnIx/65QK5rFVbPz/m7mB
 8StLFyMnh4SAicSihVtZuxi5OIQEdjBK3Pr3Gsjh4OAVEJT4u0MYpEZYIF9i7f3T7CBhIQF5
 iR+vDCDCmhLvdp9hBbHZBNQlGqa+AhspIqAm0f97AthIZoHDjBIHd25ihdjFKzGj/SnUXmmJ
 7cu3MoLYnAJWEoduH4CqEZW4ufotO4z9/th8RghbRKL13llmCFtQ4sHP3Ywg90gISEjce2cH
 YdZLbFlhAbJWQqCFUeLGm7VQrfoSjc8/gq3lFfCV+HTnPtgrLAKqEn1nZCBKXCRmv3oAdgEz
 0Ifb385hBilhBnpx/S59iOnKEkdusUBU8El0HP7LDvPTjnlPmCBsZYmPhw5B3SgpsfzSazYI
 20Piz+spTJAw3sgosfbmb7YJjAqzEME8C8niWQiLFzAyr2IUSy0ozk1PLTYqMEaO2E2M4OSn
 5b6Dcds5n0OMAhyMSjy8NyzVY4VYE8uKK3MPMUpwMCuJ8PbZAoV4UxIrq1KL8uOLSnNSiw8x
 mgK9P5FZSjQ5H5iY80riDU2NzMwMLE0tTM2MLJTEeTdx34wREkhPLEnNTk0tSC2C6WPi4JRq
 YEyzUUj0NTYXS4n5uzf9jkuVAtO3nIxL5y7Z355VPD1r5xr91KC+a7r6T2oXb94gLZd5oO+J
 dJCDZ2rOdr91+75/2VDHnqry7K+vmco2rpW/sqLZJz/78n86V8sRhaCqdM6F8+OcO/iLhWM9
 DB+H2HG6FHnOvPq1cMX9eMHrr4q9Nqqy/vZLV2Ipzkg01GIuKk4EAE2qpqSUAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190712003326epcas4p2b04fa5bb94140e84c16ed0014228d5e3
References: <20190712003140.16221-4-jsmart2021@gmail.com>
 <20190712003140.16221-1-jsmart2021@gmail.com>
 <CGME20190712003326epcas4p2b04fa5bb94140e84c16ed0014228d5e3@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_183409_946227_20E26188 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: minwoo.im@samsung.com
Cc: "minwoo.im.dev@gmail.com" <minwoo.im.dev@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> diff --git a/fabrics.c b/fabrics.c
> index 75dedf8..d92c2ff 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -190,6 +190,21 @@ static const char *cms_str(__u8 cm)
> 
>  static int do_discover(char *argstr, bool connect);
> 
> +static int ctrl_instance(char *device)
> +{
> +	char d[64];
> +	int ret, instance;
> +
> +	device = basename(device);
> +	ret = sscanf(device, "nvme%d", &instance);
> +	if (ret <= 0)
> +		return -EINVAL;
> +	if (snprintf(d, sizeof(d), "nvme%d", instance) <= 0 ||
> +	    strcmp(device, d))
> +		return -EINVAL;

Okay, I think it looks better :).  Also it would be better if it
Can provide error messages here to say to give controller instance
Instead of blkdev, But it can be made later time.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
