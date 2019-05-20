Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F11222AF2
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 06:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63lbERRvGU5kLkEOkAsZrqo5PySwnaMfiq9bZ2tXh58=; b=uNM0dbeomB4/bv
	x4jjxcA/GlYZhMDP82O7/a33PjDzcgCTVr9LMO1mfGSLE5RoRkM+7gBiMvReDFVLVZVNy69ai95+7
	9egMcpt+cdhhVWEmYkS8JRB0ZfKlTGdySQAum3NjwBCYYEIcJnRGARYvKl3NjqLw/4ma6M6T0ud39
	0EXDS/c9MYcaeZ7477SMwdcYmPg56AadPFbCx5wJEtqIDHdFltC813zk9SUU3fWbe7iMOwJAW/VSv
	cFbmx6O2Jb3wzJpt5SBZgnsbbyWtNpVFI5B7ouGVY7nC7NSTLZIcaG0lWpr9BegObxeny2rvMo+ca
	f7PIWd0d6dYfPmjMjAug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSaBa-0006x3-DH; Mon, 20 May 2019 04:46:06 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSaBT-0006we-Ma
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 04:46:01 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190520044556epoutp025b64f871d4ef5b5f8cf167c877ad52f6~gSqf0xhz31416014160epoutp02K
 for <linux-nvme@lists.infradead.org>; Mon, 20 May 2019 04:45:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190520044556epoutp025b64f871d4ef5b5f8cf167c877ad52f6~gSqf0xhz31416014160epoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558327556;
 bh=mrSbNzSLTCJEgq6TLFqxZu56v4WzhYa1k/6mT174MbE=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=JPv/wfDnZHVGlYQHOGlm2+wUuq/L3vblMP4dj+9JjJlOyzWqe97CZpLek4aL/0Xuy
 xl/oxX+uLZ+Q8XD+c1zxqb6HyP3eRTPbhdN8ue3ieRjvx1zMR/5AOicKMr1VbvoRC7
 TRvu9HYVan/wkOSjOJrk+YzYnI0090qc9nrjS62U=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.184]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190520044554epcas2p15347ee61a36a951312387d1ee0f2eeea~gSqdstwBH1728717287epcas2p1Q;
 Mon, 20 May 2019 04:45:54 +0000 (GMT)
X-AuditID: b6c32a46-d63ff7000000106f-00-5ce230ff2ef1
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 14.DC.04207.FF032EC5; Mon, 20 May 2019 13:45:51 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme-cli: close fd before return
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <BN8PR04MB57478A0FFD0196B2D868AFBF86060@BN8PR04MB5747.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190520044550epcms2p3d9d8631006d1bd63c574c1a92c4e91da@epcms2p3>
Date: Mon, 20 May 2019 13:45:50 +0900
X-CMS-MailID: 20190520044550epcms2p3d9d8631006d1bd63c574c1a92c4e91da
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEKsWRmVeSWpSXmKPExsWy7bCmhe5/g0cxBhtmclnMuv2axWL+sqfs
 Fr86uR2YPXbOusvusXlJvUf7gW6mAOaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11D
 SwtzJYW8xNxUWyUXnwBdt8wcoD1KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJD
 wwK94sTc4tK8dL3k/FwrQwMDI1OgyoScjPYNnxgLNvNWnNm1hL2BcSlXFyMnh4SAicS50xvZ
 uhi5OIQEdjBKPD2xh6WLkYODV0BQ4u8OYZAaYQFTibaup4wgYSEBeYkfrwwgwpoS73afYQWx
 2QTUJRqmvmIBsUUEoiQOL9sOVs4s4Cqx5mwWxCZeiRntT1kgbGmJ7cu3MoLYnAKxEnvm/mSC
 iItK3Fz9lh3Gfn9sPiOELSLReu8sM4QtKPHg526w8RICEhL33tlBmPUSW1ZYgPwhIdDCKHHj
 zVqoVn2JxucfwdbyCvhKzGn6B2azCKhKXF3TzwZR4yKx80cT2HhmoAe3v53DDHG9psT6XfoQ
 45Uljtxigajgk+g4/Jcd5qkd855AHa8s8fHQIagjJSWWX3oNNd1DYvXfOeyQIN7CInHw9Te2
 CYwKsxChPAvJ4lkIixcwMq9iFEstKM5NTy02KjBCjthNjOD0puW2g3HJOZ9DjAIcjEo8vB+m
 PIwRYk0sK67MPcQowcGsJMJrrH4/Rog3JbGyKrUoP76oNCe1+BCjKdD/E5mlRJPzgak3ryTe
 0NTIzMzA0tTC1MzIQkmcdxP3zRghgfTEktTs1NSC1CKYPiYOTqkGRu9H4UH17kVsv4R4o457
 rVT1fNcTxFp0SoDDZ+nxWyY3XpUdVNnbknvFoS04rmTzGgPrXt75YVkb981OO5UgYNdpUhR6
 eqLd18b8Kw5Cs7Ynvn53ZXnTDMcJP5sO+wS0We+8KlJr/P+e5rVnvVkZ9dNSfzyVc8wu5TZq
 T5dw0bjnz3306+G9SizFGYmGWsxFxYkA9Ac7XoUDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190520002113epcas4p345b92c6d82619b92478af81e81392266
References: <BN8PR04MB57478A0FFD0196B2D868AFBF86060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <BN8PR04MB5747CE9613ADDE4BA1D6A5C986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
 <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
 <20190520002805epcms2p747debe2606f1a42a2b27a6d665f5612d@epcms2p7>
 <20190520015401epcms2p413869afe9728ffc36248cf8e5e00888e@epcms2p4>
 <CGME20190520002113epcas4p345b92c6d82619b92478af81e81392266@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_214600_089997_72EB3583 
X-CRM114-Status: GOOD (  26.89  )
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> I've not said anything against PR. I was just explaining the idea behind
> sending
> 
> this patch. We can leave it to PR now.
> 
> But this is a good example of having things not be posted on the mailing
> list can
> 
> a create confusion, will be monitoring PR going forward.

Agree with your point.  Actually, recently I'm trying to send patches of nvme-cli
to linux-nvme mailing list, but I'm not sure whether the PR will not be allowed or
not because I'm a just one who contributes this project :)

> So far I've not encountered situation where PRs are being discussed on
> github and
> 
> patch-series is not posted on the mailing list, but it clear to me it
> can create a confusion
> 
> as some people are not following github as closely as mailing list and
> we don't have
> 
> the clarity over which has the priority when it comes to sending patches
> whether it is github or
> 
> the NVMe mailing list.
> 
> From my side, I'll make sure to monitor the PR on github before posting
> any further patches.

Thanks for your support, But I know it's hard to monitor Github PRs all the time.

> I don't mind that in fact I can resend this patch refer to your
> patch-set and mark it
> 
> as a preparation patch with changing title, if PR wasn't in process.

Actually, I'm okay with your patch by making it focused onto something clear.
Anyway, this patch looks good to me in code level, though.

> I've never opposed to fix the leak, but this was not the intent.
> 
> As far as this patch goes, since you are already working on PR with
> github, will retract this
> 
> change and we should go with that change.

Let's see how we can go through it together :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
