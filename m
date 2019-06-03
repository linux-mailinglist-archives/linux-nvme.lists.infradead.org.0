Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEA932796
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 06:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7JasUa3KMkJq1s8rxbrwrZmI0SOnmhHHenp2S28CqY=; b=BZUYxPS88stndK
	mxHLQMjmcTFBShu1nft5xOd3OqsSo6tqbHTYN0FUh7csQJ+LN9kBX/s6hQb6CKcqcH+2RCRpZKnIj
	0Elp0NhziUPROkWdC4BtajurfkrUW7cLIbEcbi0TFKUkTaFA5yrOkEndsK8bfgk07bzMq6G3cclS6
	qwvfBWp/U/hk7V7kwMDdTtxb76hsjJ4yor9CEpnkZIGMYTAxYMsX/ZR0n6XEfzgOXm8Hr2ZCCoIs9
	Cbs4QEldBDe7DRI+7gfIqIrs7PnlNshMEiJlvRDHXRA2PfmHWUZ0cwbzDVoE4b8jPFcZi8xj8vuv8
	Cs5Klm841vhM0m9ncW4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXede-0001jL-3s; Mon, 03 Jun 2019 04:32:02 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXedY-0001iy-T3
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 04:31:58 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190603043154epoutp04e4841f6613f0933741182b86be40bb84~klgPNHwns2447824478epoutp04G
 for <linux-nvme@lists.infradead.org>; Mon,  3 Jun 2019 04:31:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190603043154epoutp04e4841f6613f0933741182b86be40bb84~klgPNHwns2447824478epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559536314;
 bh=x5GPKkgXbL8LyYLqCYhULAUHH2WYkohzWq+UfNm21jc=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=VKP0drft+Dp9yI+uGOJ1oFureCgKn+4A685IDGfb+lEMlSWDQyzvBbExBs0HouF6c
 Y0D/2nH9H3I/oWO1IANtt+eKczmunGFNFSbmQ0npayc92cT1ldH+DpIKjeVeTZKQ2f
 Mbp69piEmbUfO8y2hkhrOyZltldVDKiFxa/OFxjg=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.186]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190603043152epcas2p2255d30adcd616bb28a5ff1d044d4bbf3~klgNyRRF22299322993epcas2p2t;
 Mon,  3 Jun 2019 04:31:52 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-7e-5cf4a2b71326
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 E9.09.04195.7B2A4FC5; Mon,  3 Jun 2019 13:31:51 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V5 2/6] fabrics: Do not return in the middle of the
 subcommand
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BYAPR04MB5749D2AD58284C2F5F859527861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190603043151epcms2p62ce7d68832b8e8732510aa9ad34f1d7b@epcms2p6>
Date: Mon, 03 Jun 2019 13:31:51 +0900
X-CMS-MailID: 20190603043151epcms2p62ce7d68832b8e8732510aa9ad34f1d7b
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNKsWRmVeSWpSXmKPExsWy7bCmue72RV9iDPZNVLCYdfs1i8WkQ9cY
 LeYve8pu8auT24HFY+esu+wem1Z1snlsXlLv0X6gmymAJSrHJiM1MSW1SCE1Lzk/JTMv3VbJ
 OzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdoo5JCWWJOKVAoILG4WEnfzqYov7QkVSEj
 v7jEVim1ICWnwNCwQK84Mbe4NC9dLzk/18rQwMDIFKgyISdj051ZrAXlFY8e+DUwxnQxcnJI
 CJhILJh0hqWLkYtDSGAHo8TeHf/Zuhg5OHgFBCX+7hAGqREWCJH4OWkrE0hYSEBe4scrA4iw
 psS73WdYQWw2AXWJhqmvwMaICMxnlPgzqQUswSygLPFt4TYWiF28EjPan0LZ0hLbl29lBLE5
 BWIlvp/+ygwRF5W4ufotO4z9/th8RghbRKL13lmoGkGJBz93M4LcIyEgIXHvnR2EWS+xZYUF
 yAkSAi2MEjferIVq1ZdofP4RbC2vgK/ErVlH2UBsFgFViXX/Z7FB1LhItH38wAZxsrzE9rdz
 mEFmMgP9uH6XPsR4ZYkjt1ggKvgkOg7/ZYd5ase8J0wQtrLEx0OHoI6UlFh+6TXUdA+Jl5tn
 MkMCuYtJ4tSnE0wTGBVmIcJ5FpLFsxAWL2BkXsUollpQnJueWmxUYIgcr5sYwQlPy3UH44xz
 PocYBTgYlXh4Z7B/iRFiTSwrrsw9xCjBwawkwrvS7GOMEG9KYmVValF+fFFpTmrxIUZToP8n
 MkuJJucDk3FeSbyhqZGZmYGlqYWpmZGFkjjvZu6bMUIC6YklqdmpqQWpRTB9TBycUg2MCS1m
 a9qvt7NdlWm91Bm++LLqoSc+b/l+frFLYHHoebfy4fsv7fvtIzcuZA8889zo4ucFXN/sWrWa
 +gUaxNtuX8uL8PR1j/hye7nuG5MX9oLP07WDS426Jq+S3Gt0U6TRRZBv7f7ECe8f/p5qZ/xZ
 i2HHz/y0uzEb7gr8TH89T5Nj2qO1Oe+UlFiKMxINtZiLihMBrQlInY4DAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190602231146epcas3p10cc96137dc9a4d7f6e7cfb78f390d240
References: <BYAPR04MB5749D2AD58284C2F5F859527861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-3-minwoo.im.dev@gmail.com>
 <CGME20190602231146epcas3p10cc96137dc9a4d7f6e7cfb78f390d240@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213157_101805_4A81C902 
X-CRM114-Status: GOOD (  11.86  )
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

Hi Chaitanya,

Thanks for your review.  That sounds absolutely right.
Will prepare V6	 patches with it.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
