Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4935E27531
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmyHRT31PdDe0ikefPrbTgN+E9XB8rbekEv1htcHWyo=; b=r1247IyHosGSeQ
	hwGRwO+x3BA2LwLcFZSO5HQG1kGaYxT5+ad8KUDHIg1wJ8gMt16971G9N+vAtqcJLg+Y/SvHL4uWP
	KHGADLWYIPmrRpK960vaRBH6bH0Ii1hjxj93NnuH5dQyEpSNVpgKGPkXaZ2UP+T8JE0Vxz9Z5GCfF
	OyJXLwRXaDv9qSqWEbEzj0WRW/o2SGrTrMxMq6Qva34wnl0swKvPZSJ4Id+SHkxhD48F/zbjDuGPc
	GN61YoD0LthoJ8wOb0Az1EFagbWQsUk8Ye+xSKfTKgXaEToMOv8jxjgQqZ1JGkIbSIuExLe8dTXVB
	kjWZYIgVAeQOYCqC4A4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfIL-00065K-Si; Thu, 23 May 2019 04:25:33 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfIG-00064x-M4
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:25:30 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190523042525epoutp036e1d5b0a140691a0d0099abd0d4ff228~hNUcvi1hp0453904539epoutp03p
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:25:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190523042525epoutp036e1d5b0a140691a0d0099abd0d4ff228~hNUcvi1hp0453904539epoutp03p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558585525;
 bh=Km1NkyRWuesFbs0EPspgWB/Elu/QKkJ+qYkVSc1HBys=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=Y0qYQOuAqYjlBcibyikCJ14X0eBEM+qcm55sXYq5+lSlbHge+zySCZ3VG7TJrNEr3
 hXwe34s6olswR1qBJoM4vdKRwfNF+I5uqVvhoPWFldNfwKz866OXaC4J7QRs7KA9Oo
 bi+wswgnthqMY8qPWoan/N2JNGaScNT4O9zc2Vrs=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.190]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190523042523epcas2p381ff2fa1717eaa73d9d162b1ef216961~hNUafa03-1244212442epcas2p37;
 Thu, 23 May 2019 04:25:23 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-dd-5ce620b11148
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 F3.A8.04207.1B026EC5; Thu, 23 May 2019 13:25:21 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V4 0/3] nvme-cli: Introduce nvme-status mapping with errno
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523042520epcms2p628bb1f47d8e02979fc3edc214cf488c5@epcms2p6>
Date: Thu, 23 May 2019 13:25:20 +0900
X-CMS-MailID: 20190523042520epcms2p628bb1f47d8e02979fc3edc214cf488c5
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIKsWRmVeSWpSXmKPExsWy7bCmqe5GhWcxBqtusVncO/qFyWL+sqfs
 Fr86uR2YPXbOusvusXjPSyaPzUvqA5ijcmwyUhNTUosUUvOS81My89JtlbyD453jTc0MDHUN
 LS3MlRTyEnNTbZVcfAJ03TJzgPYoKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgoM
 DQv0ihNzi0vz0vWS83OtDA0MjEyBKhNyMo6fesdcUFPROH06SwNjQhcjJ4eEgInEn9PT2bsY
 uTiEBHYwSmyc1Q3kcHDwCghK/N0hDFIjLBAgseT2ShaQsJCAvMSPVwYQYU2Jd7vPsILYbALq
 Eg1TX7GA2CICrhK7l+5iBLGZBXwk9l1ZzQSxildiRvtTFghbWmL78q1gNZwCthIHn31ihYiL
 Stxc/ZYdxn5/bD4jhC0i0XrvLDOELSjx4OduRpBzJAQkJO69s4Mw6yW2rLAAeURCoIVR4sab
 tVCt+hKNzz+CreUV8JW4eG0/2CoWAVWJ91OmQq11kTiyfgITxMnyEtvfzmEGmckM9OL6XfoQ
 45Uljtxigajgk+g4/Jcd5qkd855APags8fHQIagjJSWWX3rNBmF7SPxv6IKGMdBps5puM01g
 VJiFCOZZSBbPQli8gJF5FaNYakFxbnpqsVGBCXK8bmIEJzctjx2MB875HGIU4GBU4uHNMH8a
 I8SaWFZcmXuIUYKDWUmE9/SpRzFCvCmJlVWpRfnxRaU5qcWHGE2B/p/ILCWanA9MvHkl8Yam
 RmZmBpamFqZmRhZK4rybuG/GCAmkJ5akZqemFqQWwfQxcXBKNTBqFd1z3aJmY7BX57No57Ub
 PDemzfphyPV92d32hv5Dv5kUv7z0nb9+U9GZV7emTTnOoTWJwdCg64iR0JuuU4ejnmwLkTPx
 vmSX7/FE0N+Rd6Lo/7mnP6YXbf30qtnxLMuaI7PuMsx9EumfVbbfcnmIzsl9t7z/PvVmuvLt
 o+jrmcv/T1uapN7DqsRSnJFoqMVcVJwIAFjyjO+EAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190521163721epcas4p4d6e9ae0a49fde40f38fa770406538335
References: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
 <CGME20190521163721epcas4p4d6e9ae0a49fde40f38fa770406538335@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_212528_893094_8E1380B4 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please do not review on this series yet.  I seems like to fix
multi-return in the subcommands also.

Will post V5 soon.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
