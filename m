Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30CF28EE2
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 03:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NALB7c/33gjJGtMEHLh+5MdIGXCT0HbIb627TCS/rC0=; b=bysemRnP1abA0C
	q6+NQEz1x/xbHe+z+oWIGunqJriErPG8qay82QIDNM8j/52dO2jGC1eNSy4KxwUXES/LEyUM01q4X
	ghHkwtTWHN/fVBi8bhk7y2PzQCDzHXpa0bL2XZnk+Yls3SO1IZz6vfdnWAAw0+Z8Ehgib6io6oa7U
	SdQ1g2Bmxnko1Dtvz7QfMJD227oAcQQYmezPOoyQIi8oAoGtHkNUqfteF2bq76S0Jg7rfwXrM7ybB
	OU9nHZ+79Qxi9pE1BMp8ZXt0NCx6PY9ODKbbAJWezP1pTPlRBTXBFEiT1P2SX8KFcgbkIyVPFMbmv
	tri5+wM1IMNWXcxdvw1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzCY-00062I-KS; Fri, 24 May 2019 01:40:54 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzCR-00061v-UK
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 01:40:49 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190524014042epoutp03145618bf39d924c587d60b8e47fbb722~het6ZmZzs0413504135epoutp03d
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:40:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190524014042epoutp03145618bf39d924c587d60b8e47fbb722~het6ZmZzs0413504135epoutp03d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558662042;
 bh=jAKdbOhfOjTGm0Q9/36Zwsxyr4Pow8o2e9AOSMDmLzA=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=QsvRgI6aveZkOq581+H7qo0L3YX195GbST/onb0TbQPZzjKTFtbC/AUOLDsYgh5/h
 OgVrLCLTS5wgBdX5btcO1LddPncDub+4M2NoYc0FjftMCXoV5L1k/kFcW2Vn1epSXm
 L5eVtdHWS6uMygQmsbMEU36w+W325JmqZFjI6EBw=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.186]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190524014039epcas2p22b9f5c341544f858416b85bea2480520~het3kun1y2175821758epcas2p2L;
 Fri, 24 May 2019 01:40:39 +0000 (GMT)
X-AuditID: b6c32a47-14bff7000000106e-af-5ce74b951062
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 DF.26.04206.59B47EC5; Fri, 24 May 2019 10:40:37 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190524014037epcms2p26b77433a8c919b847ccb9f8acbb2485a@epcms2p2>
Date: Fri, 24 May 2019 10:40:37 +0900
X-CMS-MailID: 20190524014037epcms2p26b77433a8c919b847ccb9f8acbb2485a
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHe3av21VbPS6rkxWNaxGKupe6Osv1KjVKwbAIQlsXvai0N3bn
 qL6opNmMoCShlrneXzQJzObMLJtifrCCPpRLDCltpGUZFfaitO1O6tuP85xz/v9znkMRspmI
 OKrEZOOsJtZAi6NId3dCWnLdTn+e8tuT5Rrn4DipqfW+RBrX9VGJ5pcjehOpa3cOSXQtjQ6x
 7u7VMl111wlRDrnPkFHMsYWcVc6ZCsyFJaYiLb0zV79Vz6QqVcmqdE0aLTexRk5LZ2blJG8r
 MQQUabmdNZQGQjksz9OKDRlWc6mNkxebeZuW5iyFBotKZUnhWSNfaipKKTAb16mUSjUTyDxg
 KH5y5qvI0kkcOua4IC5Hb0U1KJICvBb6f3vJGhRFybAHQVf1ZaIGUZQUx8C0Z0EwZwHeBb6+
 HhQMy/AKmBpTCuEEmOjojwiyGK+G8rqxUJtY7ELwp7Yy9EDgePhxyU0KWlI4Wz0a5qXQduMe
 CnIkzgdflSvsZyH4mj5JZvlzrwsJHAtVb54SAsfA8M+OkB/AAG8mNghYBq03NUELgCsRDHxs
 DpcqoMI/GZKV4mx4/K4rZI3Eq+D0q9awVCZMP2sjBcsroO1TfWgLRGDGO/cVQvt46HkdzpgH
 x7unJbNDeRpGwubjYdLrDZtcAjdejIsF1kGfv14sLLlGBA+e14tOIbnz356d/wk7/wlfREQj
 WsRZeGMRx6sta/7/2hYUur3E7R7kfpblRZhC9FzpcMX7PFkEa+cPG70IKIKOleY/CoSkhezh
 I5zVrLeWGjjei5jA/KeJuIUF5sAlm2x6FaNOTVWmMxomVa2hF0tbon15MlzE2riDHGfhrLN1
 IioyrhztMNix2t373B49rk3y25t+aFdObtHtvxZzyyfJqZ0z9b0uk7WXedbvnRpx+3X6Zsuy
 lNu7NzYk1eWqsx3nB6qTZ1yVpg+Oy51fmrUjv4Y39/UPnmhfhI2KmYy1w1UMk7jn4RXF/IKJ
 zC1p3dMnZ44OGUdRD9M0cS52yHzsEiCa5ItZVSJh5dm/DLwBMpEDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190524013628epcas4p2a5b6451a173e112a13157f193fb29321
References: <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-2-minwoo.im.dev@gmail.com>
 <CGME20190524013628epcas4p2a5b6451a173e112a13157f193fb29321@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_184048_149658_EC90202D 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Some functions have label with an whitespace, but some don't.   I didn't
wanted to involve those kind of clean-up things in this series.  I just made labels
with its own function's previuos style, if there's not label, I put an whitespace
prior to label.

I was thinking that it could be cleaned-up at once later.  Do you really think that
those kind of clean-up things are involved in this commit?

Thanks for your review.
Chaitanya,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
