Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1111ECDE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 00:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7sJYAGggSQ5MmbQPAPK62UdIRf+977719fVxu9JtPQ=; b=rxV++IYf79KxvR
	uJ2bqf1JbC81hSr1oE8yDO2/G8WO7kATtNzrefzRd/sp3oQqUwBFL9AOu4ge8OndM3nlxWd7bJniq
	P4v4Ii2IqOUksb3SL/Y9DTHtxaIJ3VQUh7cfA79my+4NkoxVygvqSfOe6CurfMSC2G3C+9hHDUiLL
	DIku29TWrl9GiFFANQaF3rPK1cSA3RmcozmNWlS8hY4J8mAeNBpyzEyQn4lTi8RSBIHEdUq4pgJ+d
	BvcEAathv4orA4mdlmWevk1s+uHpekww/z7dQDwHfNO+PAmPJ1voYUg6uu65HuPIReuuEFX2DRH/m
	DuSjgUB3HPBRz5XAN8JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEx4-0002Vq-IT; Mon, 29 Apr 2019 22:40:46 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEwy-0002Ui-J6
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 22:40:42 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190429224035epoutp04473215d88766344fa04f50e778243a22~aExyrj5Xf0560905609epoutp04M
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 22:40:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190429224035epoutp04473215d88766344fa04f50e778243a22~aExyrj5Xf0560905609epoutp04M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556577635;
 bh=efZDE7R8MR8F+5XY1yFe+Tw7lt5nUY6FngkwLfh921o=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=RdBjZZoRhfSMRVt4yK5AuamaNf2cHxpkSaLPIXFzF/rozP924iN/M/UKiQ360SjPZ
 DC+eb5TGE+QXQXnYA+5ro2D640rm0MzWJ/tVdOeY1Lm7AJpJ+aOo9TlQmk6ufm+LzB
 0ugyLYE2r7jqbVV7jKgcmihFH7vOkudFJiHbyBVo=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190429224032epcas2p2cb3d89cbb8a3cdcd5ee1e109a18cbabe~aExwZYewN2600226002epcas2p2P;
 Mon, 29 Apr 2019 22:40:32 +0000 (GMT)
X-AuditID: b6c32a47-133ff7000000106e-98-5cc77d602ba2
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 A5.BD.04206.06D77CC5; Tue, 30 Apr 2019 07:40:32 +0900 (KST)
Mime-Version: 1.0
Subject: RE: Re: [PATCH] nvmet: fix ptr_ret.cocci warnings
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <SN6PR04MB45271D793C898E527914578086390@SN6PR04MB4527.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190429224031epcms2p45b9198075ea9406da495a1b813400a0d@epcms2p4>
Date: Tue, 30 Apr 2019 07:40:31 +0900
X-CMS-MailID: 20190429224031epcms2p45b9198075ea9406da495a1b813400a0d
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3O7WqursvqZFTrir3I3LU2b6EmJXkhLakwqJVd9IeT9mJ3
 hgWioyK1KIWeS12EZWkPMktrULJekJa9oHxS0dPloheUYrXrndR/Hw7fc77ne34/klAfV0SR
 +RYHtlt4E60Ik1+9NVcfu6XonkFb7QtlXd0+OXu24Y6MfXq9SsG6T79VsoNlY9l3ba0Ee8H3
 WZ6i5K65epVcR98lOXe5tpjzdJYouP1N9Yj71jid29O6V5ap3GBKNGI+F9s12JJjzc235CXR
 K9dmL8/W6bVMLLOYTaA1Ft6Mk+jU9MzYFfmmwDq0ZhtvKgiUMnlBoOOSE+3WAgfWGK2CI4nG
 tlyTjWFsCwTeLBRY8hbkWM1LGK02XhdQbjEZ2w51ELYn4wvfDHlQCfKHl6NQEqhF8P78NaIc
 hZFqqgXBx08eWTkiSRUVAcMtE0TNBGoJHDy2E4llNTUDfvZrpfJc8HvaQ0RWULOh5FC/XORI
 qgj8DbeROJKg7iOobX0cInmp4Oiet3KJp0Jz3RUkcii1Cbp+f1dI9YnQ2TCgHOXPd91I4kjY
 3feAkDgCXv7yjOwDFECfP1nCYmg6w4q2QO1C8OLT+WBrHDjffxmxVVEZ0OnZJxNZTsVA63Bn
 UJMK5272jGiIQMTmgSpCnEkEMl68HieNj4bbXUHFOCi9NawcDdVS80YmcTR88XqDS06Buie+
 YCgOnu16rZCO/BWBr7kbVSCN69+dXf8Zu/4Zn0BEPZqEbYI5DwvxtoX/P20jGvmY89Ja0NWH
 6V5EkYgOV3H+uwZ1CL9N2G72IiAJOlLF3btjUKty+e07sN2abS8wYcGLdIH8lUTUxBxr4Jtb
 HNmMLl6v1y7WsTp9PEtPVr2aWr1RTeXxDrwVYxu2j/bJyNCoEqT7fXxK1nNPr9PWv86w4hsu
 xcNneth248xZDDqVkrqxa/7ZjDlLPZM3PHtXFXNpf/KNxnRne23FySF34s+e1Yb0mur13sJl
 P8rqICGrw9nbkZK2JmYfM62wbcxg2MIPR0y62e3uB4+sA94/7uqsjLpVys1RM5zdr51Fj4mE
 A4ezKmm5YOSZeYRd4P8CtzEFLK4DAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190429221427epcas3p2ff4fc6e3b8da00a34cf5766b6f2754f5
References: <SN6PR04MB45271D793C898E527914578086390@SN6PR04MB4527.namprd04.prod.outlook.com>
 <201904300131.gB7Qr2Ik%lkp@intel.com> <20190429175734.GA20932@lkp-kbuild08>
 <CGME20190429221427epcas3p2ff4fc6e3b8da00a34cf5766b6f2754f5@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_154041_118633_C6DEF8B7 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sure, I will.

Thanks,

> -----Original Message-----
> From: Linux-nvme [mailto:linux-nvme-bounces@lists.infradead.org] On
> Behalf Of Chaitanya Kulkarni
> Sent: Tuesday, April 30, 2019 7:14 AM
> To: Minwoo Im
> Cc: linux-kernel@vger.kernel.org; Christoph Hellwig; linux-
> nvme@lists.infradead.org; Sagi Grimberg
> Subject: Re: [PATCH] nvmet: fix ptr_ret.cocci warnings
> 
> Hi Minwoo,
> 
> Can you please resend this patch with the suggested change ?
> 
> On 04/29/2019 10:58 AM, kbuild test robot wrote:
> > From: kbuild test robot <lkp@intel.com>
> >
> > drivers/nvme/target/discovery.c:375:1-3: WARNING: PTR_ERR_OR_ZERO
> can be used
> >
> >
> >   Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR
> >
> > Generated by: scripts/coccinelle/api/ptr_ret.cocci
> >
> > Fixes: 6b7e631b927c ("nvmet: return a specified error it subsys_alloc fails")
> > CC: Minwoo Im <minwoo.im.dev@gmail.com>
> > Signed-off-by: kbuild test robot <lkp@intel.com>
> > ---
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> master
> > head:   3d17a1de96a233cf89bfbb5a77ebb1a05c420681
> > commit: 6b7e631b927ca1266b2695307ab71ed7764af75e [9188/10649]
> nvmet: return a specified error it subsys_alloc fails
> >
> >   discovery.c |    4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > --- a/drivers/nvme/target/discovery.c
> > +++ b/drivers/nvme/target/discovery.c
> > @@ -372,9 +372,7 @@ int __init nvmet_init_discovery(void)
> >   {
> >   	nvmet_disc_subsys =
> >   		nvmet_subsys_alloc(NVME_DISC_SUBSYS_NAME,
> NVME_NQN_DISC);
> > -	if (IS_ERR(nvmet_disc_subsys))
> > -		return PTR_ERR(nvmet_disc_subsys);
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(nvmet_disc_subsys);
> >   }
> >
> >   void nvmet_exit_discovery(void)
> >
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
