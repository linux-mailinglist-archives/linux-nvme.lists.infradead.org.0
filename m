Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62D0274FE
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICqa5+P+8hDU5mA3yRD6fjFXnYyGH6ba2YcJg6uqlA=; b=r6WBJRgFEjti1C
	X3bc4JGcrf1qpwpTgxf9In0O5L740ps/BRQJFj5JXdQBei7mbl6wdaFCRzNHMpvpupipb2Zaz2zSp
	K14UDI711qe9VgGC/hit73HmmItbD8o1E2TNgdd/Zikdx/NdsgxsmzuP8fcRzOdEDe2c4O0wvHOCw
	zepDHjIidXL3qtE+FbNqkjSIAj5pYGWUhzjjhLGmBtWZ+W2b+vDUDjeYkNMUxLNyPUIvFdNf69M/b
	6H2IRaYUJi5mT1JHW60r9vaBNTWQ9a44rQJklu4QJ7mH2uL+eEV5RR8wtJM1T/JUUXad3G6B6/7Ky
	f8aPT/A1SoxhgUVhjI8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfAh-00030J-5V; Thu, 23 May 2019 04:17:39 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfAb-0002zx-5i
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:17:34 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190523041730epoutp0404a0f3630150bd0c79477c3eecc1d568~hNNhi-CEO2138221382epoutp04d
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:17:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190523041730epoutp0404a0f3630150bd0c79477c3eecc1d568~hNNhi-CEO2138221382epoutp04d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558585050;
 bh=NeMBAGjxVjixVQk8Pi6TWDsfHzxxbkzyZauYchMkKyk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=NAUjZc4sI7x3WkzUj8ElHWAEmf6S2hZ2lWMCnM6T+zTbIizv+grvh4KWzBTDXCtlV
 Lv321Aez3Vn/tX20+SOmstv2fIfpRx0TtY3wo0CSTyHb7cXuTx0qOdvVL1a76xwgiq
 AX3XN0oZtuVHf9VL4l+/wHBbSfAlL447jqPM3ot0=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190523041728epcas2p2a24e4ef76134315987beea483523c666~hNNf8KiKa1728917289epcas2p2S;
 Thu, 23 May 2019 04:17:28 +0000 (GMT)
X-AuditID: b6c32a47-14bff7000000106e-9e-5ce61ed6131a
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 73.07.04206.6DE16EC5; Thu, 23 May 2019 13:17:26 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 5/9] nvme: fix coding style issue
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1558543193-24752-6-git-send-email-maxg@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523041726epcms2p4a785d6460ce30c5fec32462a352bf6c1@epcms2p4>
Date: Thu, 23 May 2019 13:17:26 +0900
X-CMS-MailID: 20190523041726epcms2p4a785d6460ce30c5fec32462a352bf6c1
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKJsWRmVeSWpSXmKPExsWy7bCmue41uWcxBvu2mVisXH2UyWLSoWuM
 FvOXPWW3WH78H5PF6UcH2C3WvX7PYnHn/Do2B3aP8/c2snhsWtXJ5rF5Sb3H7psNbB7Pph9m
 8vj49BZLAFtUjk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4Cu
 W2YO0C1KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJDwwK94sTc4tK8dL3k/Fwr
 QwMDI1OgyoScjNdrLzIXeFXsnHOSvYHRtouRk0NCwERi69b/7CC2kMAORolnjw27GDk4eAUE
 Jf7uEAYJCwuYSnTt+8sIEhYSkJf48coAIqwp8W73GVYQm01AXaJh6isWEFtEYAujxILJOV2M
 XBzMAtMZJdZfuMcIsYpXYkb7UxYIW1pi+/KtYHFOASeJ1qd3oGpEJW6ufssOY78/Nh8qLiLR
 eu8sM4QtKPHg526weyQEJCTuvbODMOsltqywAFkrIdDCKHHjzVqoVn2JxucfwdbyCvhKnNvx
 Cmw8i4CqxMSPq6BGukjsfnCcDcRmBnpx+9s5zCAzmYF+XL9LH2K8ssSRWywQFXwSHYf/ssM8
 tWPeEyYIW1ni46FDUBMlJZZfes0GYXtIrH26kgnkNCGBg4wSk589Z57AqDALEc6zkCyehbB4
 ASPzKkax1ILi3PTUYqMCY+R43cQITpJa7jsYt53zOcQowMGoxMObYf40Rog1say4MvcQowQH
 s5II7+lTj2KEeFMSK6tSi/Lji0pzUosPMZoC/T+RWUo0OR+YwPNK4g1NjczMDCxNLUzNjCyU
 xHk3cd+MERJITyxJzU5NLUgtgulj4uCUamBsqxSacLeiZpXYWdNrPZJ7F61a1LmyVjn044Xp
 61usjz+Z/myhnnPWsavc3z+Ghc2/drd85sTyxU/u/tTIOp282XHxk7nsG48195XWpT5L9VC3
 7BVfaH7G6cNNrecVt/feSLB0zLlf1RSm5tWw061RgDt0eo7/lRvqqRNMp2zfxLVdtd1K9X2N
 EktxRqKhFnNRcSIAc4WrjKgDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522164042epcas4p3f4024bcfb13091b1e47c6a0198215488
References: <1558543193-24752-6-git-send-email-maxg@mellanox.com>
 <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <CGME20190522164042epcas4p3f4024bcfb13091b1e47c6a0198215488@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_211733_381858_9B222CF4 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maxg@mellanox.com" <maxg@mellanox.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "shlomin@mellanox.com" <shlomin@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
