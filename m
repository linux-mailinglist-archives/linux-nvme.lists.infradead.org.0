Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F23C353
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 07:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIoNPOYkV0e62RQ6ou4flr03D23fRR7/M6Uq8eOglZg=; b=Z6tYlARIk/xgaD
	/558raSASd99vGGSG7paaZ842iItROxBhfaxDJnxTaeTXJyiwKvm20BY6Sce11qvacEQBrelXCdQX
	LgoXX6/R0BtlpimTw3xMCI/jrJyuR6i0UbCI0N63pVgQd6Cg5tpHHOmuQP/fFE3XCHEQ2y91csC7E
	Yq3s1Qt4VHmTdczslCg3SYUOzjLlnGd6d9StZLtek2zDTswVHuwvJojh7FtswPhFdWCcqob4JuIxU
	tAhgn4+JHaHBADOYuq5OfTVbWOcw7TbjzA92Dr2PZQN+OUJwKqDl2wsdv+CH0GpjExtDAZ7RFDbjk
	rqwRH10YNaAgX8ygnsag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZ7h-0000KE-GD; Tue, 11 Jun 2019 05:15:06 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZ7X-0000H8-86
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 05:14:56 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190611051452epoutp0242dc5422c7d03eca86eeb0fb7415d6ba~nDQCYT-ig0401904019epoutp02-
 for <linux-nvme@lists.infradead.org>; Tue, 11 Jun 2019 05:14:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190611051452epoutp0242dc5422c7d03eca86eeb0fb7415d6ba~nDQCYT-ig0401904019epoutp02-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560230092;
 bh=16lcUJdq6zsgdvbEHnA+Vt8f0l7lqf7ZNY0qJT/vUMY=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=tZRcbNvF7G1vOWecG9XSjxgXEtqQKh0BAFOWkC0jyJY2CBUblRkFrJh02el2cbXqA
 38hxfZgtwxnXrSisgsZnlEPVPudL+uB/iNk0Lq7ntmjlPsIo0AipMmrMNlb/FWhtNl
 XClM8CtagY2cz5TMz358vaj7pbTvYX9TlweObhPo=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.187]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190611051450epcas2p2832d73eab369d33d31366e6020a9cf74~nDQAnoeRR2680526805epcas2p2T;
 Tue, 11 Jun 2019 05:14:50 +0000 (GMT)
X-AuditID: b6c32a48-689ff7000000106f-48-5cff38caed5a
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.C1.04207.AC83FFC5; Tue, 11 Jun 2019 14:14:50 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [RFC] mismatch between chardev and blkdev node names
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <keith.busch@gmail.com>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced@epcms2p4>
Date: Tue, 11 Jun 2019 14:14:48 +0900
X-CMS-MailID: 20190611051448epcms2p4637f4b9209d0b9292e0db2b3be1dcced
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpik+LIzCtJLcpLzFFi42LZdljTTPeUxf8Ygz9TWCxmHM2wmL/sKbvF
 r05ui2enDzBbrHv9nsWB1WPnrLvsHufvbWTx2Lyk3qNvyyrGAJaoHJuM1MSU1CKF1Lzk/JTM
 vHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUXnwBdt8wcoK1KCmWJOaVAoYDE4mIlfTubovzS
 klSFjPziElul1IKUnAJDwwK94sTc4tK8dL3k/FwrQwMDI1OgyoScjO3bulgKPrNWnJj4nqmB
 8SZLFyMnh4SAiUTzwV1MXYxcHEICOxgljlxawdbFyMHBKyAo8XeHMEiNsICjxNGlO1lBwkIC
 8hI/XhlAhDUl3u0+wwpiswmoSzRMfcUCMkZEYDKjxNJ508ESzAL6EoubulghdvFKzGh/CrVX
 WmL78q2MIDangL3Enf/dbBBxUYmbq9+yw9jvj81nhLBFJFrvnWWGsAUlHvzczQhyj4SAhMS9
 d3YQZr3ElhUWICdICLQwStx4sxaqVV+i8flHsLW8Ar4Sx1c9B4uzCKhKrOzfBXWOi8SJJ38Y
 IU6Wl9j+dg4zyExmoB/X79KHGK8sceQWC0QFn0TH4b/sME/tmPeECcJWlvh46BDUkZISyy+9
 hnrKQ2LR+uXskEBeyiRx/doR9gmMCrMQ4TwLyeJZCIsXMDKvYhRLLSjOTU8tNiowQY7aTYzg
 9KflsYPxwDmfQ4wCHIxKPLwR0f9ihFgTy4orcw8xSnAwK4nwdn0HCvGmJFZWpRblxxeV5qQW
 H2I0Bfp/IrOUaHI+MDXnlcQbmhqZmRlYmlqYmhlZKInzbuK+GSMkkJ5YkpqdmlqQWgTTx8TB
 KdXAeNTwQrRWy1zDb0cmz1gb7q132OuJzsOL2i6T13zewDghOT+yReVnlITHOqNbJqs2rP3y
 Yc3yle3V/o2fPayO/Z83t+zp+qt7ekXvLS6elu6s4OByLetIiVKV3sWLk68JnZz1qFJjg6h+
 ZPseZoPfAsWhXxMvOfmcX2n3WnvvOSWvmKRDfR7R9UosxRmJhlrMRcWJALUj6DmVAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190610235716epcas4p2715a468530e87b74c60543e8077a0481
References: <49a9c722-72f4-bce9-b368-ece078e1e03a@grimberg.me>
 <20190610124925.GA20319@minwooim-desktop>
 <CAOSXXT6BJD8tnus6=vWh6dr9owkVSJdQ_f1icG9Kdq7SpF9Pzg@mail.gmail.com>
 <20190610140650.GA25273@minwooim-desktop>
 <CGME20190610235716epcas4p2715a468530e87b74c60543e8077a0481@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_221455_450044_E08720ED 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> >> You just need to know this if you're accessing direct namespace
> >> handles, and the controller-namespace relationship is accurately
> >> represented in sysfs for those wanting to view it.
> >
> > Then the user should exactly know the relationship bettwen the
> > controller and namespaces via the sysfs structures.
> 
> Or run:
> 
> nvme list-subsys (with or without passing in a namespace device node).
> 
> For example: nvme list-subsys /dev/nvme0n1 will show you exactly which
> controllers it spans and which subsystem it belongs to.

Yeah, Sagi.

I just have posted the comment to the issue in Github just like what you've
mentioned.  we can figure out the relationship for the subsystems via
"nvme list-subsys".

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
