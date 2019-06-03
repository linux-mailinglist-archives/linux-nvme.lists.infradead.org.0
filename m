Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E22327BF
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 06:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJ9dze+PqosxDpFe+kZnMQHnO9V9tTz3m+ipL6iwpik=; b=ZaAl0RWt2rfn3a
	GH98DC81plbhRI6AkfSzBLi/uuieOUDKb0h4mJ6ujIn6MKuYr9t1Enuq55hf35T6kErhe728AhKb5
	Z6HGfJmNBlq1S009j068inzklGXe5sIB7ZCvWmhZoUKZgWg/wC33KV7UMb3qgR0TxQIah0QUBlyOA
	3/NuByfQRYiq94EIWS1EjvNDyuUbIIjrn3CBbpUt1cl45NBo4hAhdPxVz18RZBPe+NhdM4MuZG5vU
	OsuaoNhHm4zzFkio3loC0Hbe1KcuOX6EdrBT9JKS6wClR44OvD+tfuWkfG/39zzORnu1Tw37yPB5H
	YNrzie+yyBum57vUO8uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXegj-0004ne-Vn; Mon, 03 Jun 2019 04:35:14 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefr-0003W9-7P
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 04:34:52 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190603043416epoutp04944c0d0878e973d1a799ee1e4c99cdd7~kliUJvXhd2627526275epoutp04a
 for <linux-nvme@lists.infradead.org>; Mon,  3 Jun 2019 04:34:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190603043416epoutp04944c0d0878e973d1a799ee1e4c99cdd7~kliUJvXhd2627526275epoutp04a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559536456;
 bh=JGvMTm/wyhXiqBFZfxXKXccqtyf4PsSYRcBTPttn2NA=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=hlsn2goa8tq/zkzq1YoVH0zpBegwh/63xQeWEGHLycV3uYU0xCmBraKcCvcJGptah
 342TbsA5T150V3i7elVAWLAmpSl6Fmib1mEyHHVV9VAn96x2nhTIiw9g/0MN9OD7re
 RuFvi9Px6HZVDxALuGTidVLfOa14IIkIGW8YrkN0=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.184]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190603043415epcas2p41f66d3748a035e08cebeccca4441a3fd~kliStmrRA0320303203epcas2p4y;
 Mon,  3 Jun 2019 04:34:15 +0000 (GMT)
X-AuditID: b6c32a47-5a93e9c00000106e-99-5cf4a346ccaf
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 38.3C.04206.643A4FC5; Mon,  3 Jun 2019 13:34:14 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BYAPR04MB574964DAEA1B94732AE1E349861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190603043414epcms2p30dfc8251c2d56070d94bb55c1a93a7ec@epcms2p3>
Date: Mon, 03 Jun 2019 13:34:14 +0900
X-CMS-MailID: 20190603043414epcms2p30dfc8251c2d56070d94bb55c1a93a7ec
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLKsWRmVeSWpSXmKPExsWy7bCmqa7b4i8xBu97RCxm3X7NYjHp0DVG
 i/nLnrJb/OrkdmDx2DnrLrvHplWdbB6bl9R7tB/oZgpgicqxyUhNTEktUkjNS85PycxLt1Xy
 Do53jjc1MzDUNbS0MFdSyEvMTbVVcvEJ0HXLzAHaqKRQlphTChQKSCwuVtK3synKLy1JVcjI
 Ly6xVUotSMkpMDQs0CtOzC0uzUvXS87PtTI0MDAyBapMyMnY17SNvaCZpeLti3NsDYz9zF2M
 nBwSAiYSr79NYwSxhQR2MEosmOPWxcjBwSsgKPF3hzBIWFggUOLmiSOMIGEhAXmJH68MIMKa
 Eu92n2EFsdkE1CUapr5i6WLk4hARmM8o8WdSC1iCWUBZ4tvCbSwQq3glZrQ/hbKlJbYv3wq2
 llMgVqJx2xt2iLioxM3Vb+Hs98fmM0LYIhKt985CnSwo8eDnbrB7JAQkJO69s4Mw6yW2rLAA
 OUFCoIVR4sabtVCt+hKNzz+CreUV8JX40fALbDyLgKrEotbDUKtcJHZfv8sMcbK8xPa3c5hB
 ZjID/bh+lz7EeGWJI7dYICr4JDoO/2WHeWrHvCdMELayxMdDh6COlJRYfuk1G4TtIXHi+Rw2
 kNOEBBYyS3Ru+8k4gVFhFiKcZyFZPAth8QJG5lWMYqkFxbnpqcVGBcbIMbuJEZz0tNx3MG47
 53OIUYCDUYmH9wPnlxgh1sSy4srcQ4wSHMxKIrwrzT7GCPGmJFZWpRblxxeV5qQWH2I0Bfp/
 IrOUaHI+MCHnlcQbmhqZmRlYmlqYmhlZKInzbuK+GSMkkJ5YkpqdmlqQWgTTx8TBKdXA6Bmx
 oV48vSj0ta/p+fLUr4xx2m86XieH8bO+VI32ujnlotb0G5EHZlXOEuie1rW29dLFz6Hfpm0O
 UlHV0v228ri3uOwZVcfDWfc+qtiJng0p3b5aqenB8Qk22Wvuz2pviqm9rtkUJie49TGD8c/f
 +hH5kpNXTnn3t7vpx1GxHpn7ds/d5kX3KLEUZyQaajEXFScCALws5neQAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190524013628epcas4p2a5b6451a173e112a13157f193fb29321
References: <BYAPR04MB574964DAEA1B94732AE1E349861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-2-minwoo.im.dev@gmail.com>
 <20190524014037epcms2p26b77433a8c919b847ccb9f8acbb2485a@epcms2p2>
 <CGME20190524013628epcas4p2a5b6451a173e112a13157f193fb29321@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213420_730388_CA50530C 
X-CRM114-Status: GOOD (  16.10  )
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

> We should at least try and use the default style irrespective of the
> inheriting existing style
> 
> which will trigger more cleanups. Begin said that now the question is
> what is default style ?

Actually, I wanted to ask what the default style is to myself  ;).

> I'd just stick to non space labels as that is something been consistent
> with kernel code.

I think following kernel code style would be better than what these
patches are doing here.

Will prepare V6 series with it.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
