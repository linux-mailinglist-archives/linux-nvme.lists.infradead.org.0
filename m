Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F603278B
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 06:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kehc4VJPeGz9nwyYhcxbneBynTnKMtQuiefyEHHUFDQ=; b=qAyxGcz/LoCwla
	pQlcOJ2e9W30RPet3KzA8eVaktK6vxgw09L/urdO2w1M3z1mERskgf0hu6Ma6hPWq5RWCcYFpfK8z
	HcsOVsx5ZyL1pYpOJN+nWTD0HIaUoxX0HVtQibPknEBgn0195UQUsQHqAsnuAaRfyp+tzE/zDarL4
	MopI+oKp9snVpa6yXsXInR7tv8khrbfU7l/4p/mMGNkpgtgquJivEelFVV/SLt/tzLrVomciWDAAt
	A2Hdy+ndn+sbns8FlsMwJFT5w9BJVf/2NvujcwZ1se0EgngIfvBgpiY7qY4lNVcxfXiXBwd7FW8cl
	WMoWPFp4drhE8ccTfv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXebC-0000An-Kf; Mon, 03 Jun 2019 04:29:30 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeb7-0000A2-6v
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 04:29:26 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190603042918epoutp03229f82fc8ea6443a424a848f3c0627bb~kld_vBaIi2476524765epoutp03Q
 for <linux-nvme@lists.infradead.org>; Mon,  3 Jun 2019 04:29:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190603042918epoutp03229f82fc8ea6443a424a848f3c0627bb~kld_vBaIi2476524765epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559536158;
 bh=+0I6KUOTYVxnp3eGmJtlQfBUQoObObZUhLXywaW/mJo=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=HVSVXM9HOrplx/acx0Z9agho8fq7S9uEiuNt5q+8tbUQOK1eeyRTAnuSL3gt9En1X
 6qQVXm9hFIEdQhrJ6A6NpewMsZxxa6sXdgr5HcWpnCHnNvoEoj1pD2SCPP7/AyFjzg
 1fbq6MAMOvzJr68wzKWBHccJHlHkZ41jm/P087KU=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.187]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190603042912epcas2p2fb47fb5e2906a4bd3432422b73bc1362~kld4yd4L11232312323epcas2p29;
 Mon,  3 Jun 2019 04:29:12 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-c9-5cf4a2153b7d
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.1E.04207.512A4FC5; Mon,  3 Jun 2019 13:29:09 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme-cli: add default value for nsid of write-zeroes
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Sagi Grimberg
 <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BYAPR04MB5749A32C48ADD555EF1B6A8C861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190603042909epcms2p6a171f91c9d75e5ada95685ad6523cd95@epcms2p6>
Date: Mon, 03 Jun 2019 13:29:09 +0900
X-CMS-MailID: 20190603042909epcms2p6a171f91c9d75e5ada95685ad6523cd95
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTURzHO7vX7WotTlPrl5WNayFa003auj2MKItJBmKQVBO96EWlvdjd
 xF5okZj2QM0oVvjI0l4mrdSV/9gMg0oli/KR00gLshTpZZbSXmL/ffie3znf7/ecQxGSQmEI
 la03cyY9q6WFAWRTW4RKFnz1u0beP7icsfaPkkyZ4w1iKmtHRMxU0Xzm7ug4udVP/dA6IFJ3
 Oe+RatutIqH6/rU8dWHraUGi337t5iyOzeBMUk6fbsjI1mfG0rv2pG5PVarkCpliA7OelupZ
 HRdLxyUkynZma13etDSH1VpcUiLL83T0ls0mg8XMSbMMvDmW5owZWqNCYYziWR1v0WdGpRt0
 GxVyeYzSNZmmzaqxfSSNP1Hul8EhIh+1omLkTwFeB8119R6WYDuC10VQjChKjBfBtD3QLQfi
 eOh7d0fgliV4JUx+lnvlCBhreeHnZiEOh/wLn8liFEAF4ccInH13SfcCgcPgZ3UT6bUSw6XC
 ER8vc9k2emz9cQoUDDQKvXow9N7+Kprl8fZKX8wgKHB2EF5eBEO/W5A7D2AA59gWL+bBgxuM
 OwLgkwh6vtT7tkbD8U8THlsx3g32ikEPk3g1OCq7fTNxMDNViryRV0Lz1yuE+0zC1bHhUbT3
 +DB40ucrtRBOtU2LZkvZK4YFXg6DCYfDF3Ip1HWP+kqpoaJ8ROSOJsFnBHDD3k6UIKl17p6t
 /xlb54yrEHELLeaMvC6T42OM6/5/WRvyfMJItR21diY4EKYQvUB8SfRdI/Fjc/hDOgcCiqCD
 xDdVExqJOIM9dJgzGVJNFi3HO5DS1b+UCAlON7i+tN6cqlDGqFTyDUpGqYph6CVi2/xejQRn
 smbuIMcZOdPsPgHlH5KPkrqeJYUQ5NPhtMmzW8fKJnZM7etQNtTBidPWb7b2o8UFOXfwdLKm
 8phMFpRsHKqZDFt95Bu7VDVP2N32p+d8w6qqhPjE62z53r6ba4kPubHlLw9UqxB9ebB2W2fS
 35Lk0NuF71NenftRkBdX/+t5fW6peMXIzMVNTsua8bfhMw2hNMlnsYpIwsSz/wBpcZ4MmgMA
 AA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190602232226epcas5p4831fd57de8def05b189bc9bf5c7c5432
References: <BYAPR04MB5749A32C48ADD555EF1B6A8C861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190601070003.20142-1-minwoo.im.dev@gmail.com>
 <bfac4b78-937c-42e8-1be1-f9a81ad22ab7@grimberg.me>
 <CGME20190602232226epcas5p4831fd57de8def05b189bc9bf5c7c5432@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_212925_417298_55237F97 
X-CRM114-Status: GOOD (  13.18  )
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

> Is this breaking any testcases or expected behavior ?

Hi Chaitanya,

Thanks for your question.  As I replied to Sagi, This patch can be ignored.
Sorry for making confusions here.  This patch has never caused any
issues ever.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
