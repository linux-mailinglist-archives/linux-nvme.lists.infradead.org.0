Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC222B61
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 07:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jQYkd74Fc3E3tn2vOclAiz0ZL4kWIqST4DcsQrlt7U=; b=PzUDBGS7KC2PYw
	AUtdHMxp2x8Fejlw7g+kcRUNpp025OQdV18cRaIdp9SpygvpEyXlP1alV/YaM99r6jSdLC/xTDHtq
	aUlcKwq8URa4/xkN40sVEQAy35r8SKdYwBAE5KYinl8P2z/ChHFe7CPt+Ku4YKJ8KhM3lF1E5WMAU
	iGPCaHU0oCemNqjD4FYq2yKCcXdUwUDjGecoJ+2LG4Mapb8gbiL/WDYT0aez0+uyFFtPVbNthGzVl
	sBFgbIf5stPETQV2AjTKFMkdScH3Ihe9khB2Rzz8jjyHojQ2xab52aXWBZVOb/gDxhZ7J/qy9Rx4B
	BurcVkLVYBCHuTHfGS4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSb6L-0000No-6m; Mon, 20 May 2019 05:44:45 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSb6F-0000NO-MM
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 05:44:41 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190520054435epoutp02f76d872438720a6632a52809e4453e33~gTdtbMpuz0734407344epoutp02P
 for <linux-nvme@lists.infradead.org>; Mon, 20 May 2019 05:44:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190520054435epoutp02f76d872438720a6632a52809e4453e33~gTdtbMpuz0734407344epoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558331075;
 bh=2MguKCuMtiv8HqXj3xXtcUOUeHudxuEUCgpbbSxlRAQ=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=N818Qx3NhQU4q2jA1sztjVsWW4IBVL7i1cuBhw7ojI9uWq889H+8p6mPRrHjOkAn7
 5mYTu6iQSB2KG+Cee0sNZ4cSjEP+7Qmjy1N5rWLFsYhIc3Re8pvJPAF/4d00C9NdDn
 j4x+4tDq6/fBOB2JODfB8rqYm60+8W38vFhH7CV0=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190520054433epcas2p2177ba62cbfda57cf7606924303c065ac~gTdrWLZ5G2662926629epcas2p23;
 Mon, 20 May 2019 05:44:33 +0000 (GMT)
X-AuditID: b6c32a45-d47ff70000001063-2a-5ce23ec0dcbd
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 B5.79.04195.0CE32EC5; Mon, 20 May 2019 14:44:32 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V3 2/4] nvme-status: Introduce nvme status module to map
 errno
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BN8PR04MB5747BFE1C3B0B448989A4BBF86060@BN8PR04MB5747.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190520054432epcms2p117ec6863810f257db816655f31b4eef7@epcms2p1>
Date: Mon, 20 May 2019 14:44:32 +0900
X-CMS-MailID: 20190520054432epcms2p117ec6863810f257db816655f31b4eef7
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHKsWRmVeSWpSXmKPExsWy7bCmue4Bu0cxBgvWyVjMuv2axeLe0S9M
 FvOXPWW3+NXJ7cDisXPWXXaPxXteMnlsXlLv0X6gmymAJSrHJiM1MSW1SCE1Lzk/JTMv3VbJ
 OzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdoo5JCWWJOKVAoILG4WEnfzqYov7QkVSEj
 v7jEVim1ICWnwNCwQK84Mbe4NC9dLzk/18rQwMDIFKgyISfjzfPj7AXNwhV7T21jbWBs4+1i
 5OSQEDCReHFvCmsXIxeHkMAORok7p+cBORwcvAKCEn93CIPUCAuESLS1QoSFBOQlfrwygAhr
 SrzbfYYVxGYTUJdomPqKBWSMiMB8Rok/k1rAEsxAiVtXH7BB7OKVmNH+lAXClpbYvnwrI4jN
 KRArMWXddqi4qMTN1W/ZYez3x+YzQtgiEq33zjJD2IISD37uZgS5R0JAQuLeOzsIs15iywoL
 kBMkBFoYJW68WQvVqi/R+Pwj2HheAV+Jr6cOgp3GIqAq8Xp9B9QqF4mmBy+ZIE6Wl9j+dg4z
 yExmoB/X79KHGK8sceQWC0QFn0TH4b/sME/tmPeECcJWlvh46BDUkZISyy+9hnrcQ+L5xAWM
 kEDuYJI433mZbQKjwixEOM9CsngWwuIFjMyrGMVSC4pz01OLjQoMkaN2EyM47Wm57mCccc7n
 EKMAB6MSD++HKQ9jhFgTy4orcw8xSnAwK4nwGqvfjxHiTUmsrEotyo8vKs1JLT7EaAr0/0Rm
 KdHkfGBKziuJNzQ1MjMzsDS1MDUzslAS593MfTNGSCA9sSQ1OzW1ILUIpo+Jg1OqgbE7ZHHE
 kUX6tZUVyrfPG209EdUyS3jX1pCy54K2Tw0PvQp17mfqFJhZOq3IR67TKv/1Ic5pT2oXH4ua
 22ygPifcv6/4J8d3g+bCefIrC9NSkz5U7OAOmMuUtrjbOCFtD2NwAPuh+p4pLI6BR76tEXN+
 7OjnljlHkMsy6eXWL/u1eat3TelSU2Ipzkg01GIuKk4EAJObGKSRAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190520051526epcas4p268b27507fc5aa3aac2a2e30ff9fdd27e
References: <BN8PR04MB5747BFE1C3B0B448989A4BBF86060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519183913.3493-1-minwoo.im.dev@gmail.com>
 <20190519183913.3493-3-minwoo.im.dev@gmail.com>
 <CGME20190520051526epcas4p268b27507fc5aa3aac2a2e30ff9fdd27e@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_224440_066694_4EB7CEB0 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> I'm not sure if this patch is tested or I'm making some terrible mistake
> in testing.
> 
> It is breaking tests based on the nvme-cli unless I'm doing something wrong,
> 
> in that case please correct me.

The one who has made a terrible mistake here is me ;)

> Default :-
> 
> root@mat ~/nvme-cli (master)# nvme id-ns /dev/nvme0n1
> NVME Identify Namespace 1:
> nsze    : 0x200000
> ncap    : 0x200000
> nuse    : 0x200000
> nsfeat  : 0
> nlbaf   : 0
> flbas   : 0
> mc      : 0
> dpc     : 0
> dps     : 0
> nmic    : 0
> rescap  : 0
> fpi     : 0
> dlfeat  : 0
> nawun   : 0
> nawupf  : 0
> nacwu   : 0
> nabsn   : 0
> nabo    : 0
> nabspf  : 0
> noiob   : 0
> nvmcap  : 0
> nsattr    : 0
> nvmsetid: 0
> anagrpid: 0
> endgid  : 0
> nguid   : 00000000000000000000000000000000
> eui64   : 0000000000000000
> lbaf  0 : ms:0   lbads:9  rp:0 (in use)
> root@mat ~/nvme-cli (master)# echo $?
> 0
> 
> With this patch-series.
> 
> root@mat ~/nvme-cli (master)# ./nvme id-ns /dev/nvme0n1
> NVME Identify Namespace 1:
> nsze    : 0x200000
> ncap    : 0x200000
> nuse    : 0x200000
> nsfeat  : 0
> nlbaf   : 0
> flbas   : 0
> mc      : 0
> dpc     : 0
> dps     : 0
> nmic    : 0
> rescap  : 0
> fpi     : 0
> dlfeat  : 0
> nawun   : 0
> nawupf  : 0
> nacwu   : 0
> nabsn   : 0
> nabo    : 0
> nabspf  : 0
> noiob   : 0
> nvmcap  : 0
> nsattr    : 0
> nvmsetid: 0
> anagrpid: 0
> endgid  : 0
> nguid   : 00000000000000000000000000000000
> eui64   : 0000000000000000
> lbaf  0 : ms:0   lbads:9  rp:0 (in use)
> root@mat ~/nvme-cli (master)# echo $?
> 5
> root@mat ~/nvme-cli (master)#
> 
> If I read code correctly it will default into the return EIO for
> nvme_XXX_status_to_errno(),
> 
> else will return EIO when status == 0. If my analysis is correct
> following untested patch
> 
> should fix the problem.
> 
> root@ ~/nvme-cli (master)# git diff
> diff --git a/nvme-status.c b/nvme-status.c
> index 349b49e..2dbfad8 100644
> --- a/nvme-status.c
> +++ b/nvme-status.c
> @@ -127,6 +127,9 @@ __u8 nvme_status_to_errno(int status, bool fabrics)
>  {
>         __u8 sct;
> 
> +       if (status == 0)
> +               return 0;
> +
>         if (status < 0)
>                 return ECOMM;
> 
> any thoughts ?

Totally agreed with this one.  Will prepare a V4 patch for this after some more reviews
on this :)

Thanks, really.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
