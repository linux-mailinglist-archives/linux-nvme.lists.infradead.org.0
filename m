Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADB41563D
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 01:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaO/vaF9kCcc8ZY29vfE2fQZXjgQBuLVFHZR4Pb+mtA=; b=B8CYsZyU4pbLoF
	YFoaSrUTeoEfKKywukGfOcf6mW8RHO9mFEaBm6KFp/0a7KLo1+9DNVSOueZP7v8ZVxzvjeRRSzeu+
	DAr80RbDXbA3qsLCZt+ohChl3kTGFfXTY1TyD+0KbMGj6STC040EgHJ6sdWaXwidBaB3hEyPOClHA
	DMn9aEe3SJWwPC1ejwGIvCsFq9l1kkkVHu5t7CfFn+DSQhVNjFW128CWGTDbxuIY/szZsfV7WXDgz
	9aY1CQl075B0+Fpj1p93W/Bck/mw28pG1TC88/KYSLOyEJsUmz9D8KdFJlHR7av5xusoZx3scAoC0
	5eL7PPTp/vChV/qhPYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmaQ-00065z-Ae; Mon, 06 May 2019 22:59:54 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmaK-00065X-Fc
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 22:59:50 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190506225942epoutp04acc617ed5c528db96df493102ae72eb4~cOjew9CkJ1839618396epoutp04B
 for <linux-nvme@lists.infradead.org>; Mon,  6 May 2019 22:59:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190506225942epoutp04acc617ed5c528db96df493102ae72eb4~cOjew9CkJ1839618396epoutp04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557183582;
 bh=ddWtuO64nqIUHM1BmXavUPxGULmeEufveCoZM49DDMQ=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=GsLDw5fbqx21nn2U0imJUeBQ8Z3DSMWvyg7fT7T1coVzlJg8tDVXniXiXsqpcCJO+
 t+JJ7px/Fkg3YJl6XnqrVgkTNYNBecazT/5GR3dVJWrs53FAnK7H+EF0vtVrRvVFQK
 Cnf7SerdJ1Jhmuj4Kl9lgjeUKgbrs37cifl8YL9I=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.188]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190506225939epcas2p2f242c7cb3a6cd08dfe29db07509271b8~cOjcdZP151610716107epcas2p2z;
 Mon,  6 May 2019 22:59:39 +0000 (GMT)
X-AuditID: b6c32a46-d4bff7000000106f-75-5cd0bc5a2b69
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 BE.E4.04207.A5CB0DC5; Tue,  7 May 2019 07:59:38 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 1/2] nvme: Introduce nvme_is_fabrics to check fabrics cmd
From: Minwoo Im <minwoo.im@samsung.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <SN6PR04MB452746C95169477C3DD9C8A786300@SN6PR04MB4527.namprd04.prod.outlook.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190506225938epcms2p357314dad168e5822fa4145e7873f5709@epcms2p3>
Date: Tue, 07 May 2019 07:59:38 +0900
X-CMS-MailID: 20190506225938epcms2p357314dad168e5822fa4145e7873f5709
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAJsWRmVeSWpSXmKPExsWy7bCmmW7UngsxBl+/mFr833OMzWLW7dcs
 FitXH2Wy2L3wI5PFvaNfmCzmL3vKbvGrk9vi2ekDzBbrXr9nceD0mHX/LJvHxOZ37B47Z91l
 9zh/byOLx+I9L5k8Ni+p99h9s4HNo2/LKkaP9gPdTAGcUTk2GamJKalFCql5yfkpmXnptkre
 wfHO8aZmBoa6hpYW5koKeYm5qbZKLj4Bum6ZOUA3KimUJeaUAoUCEouLlfTtbIryS0tSFTLy
 i0tslVILUnIKDA0L9IoTc4tL89L1kvNzrQwNDIxMgSoTcjJOLm9kLFjCUnH8xy6mBsblzF2M
 HBwSAiYSEzZadzFycQgJ7GCUOLr0GiNInFdAUOLvDuEuRk4OYQF/iaPvHrGAhIUE5CV+vDKA
 CGtKvNt9hhXEZhNQl2iY+ooFZIyIwHxGiT+TWlhBHGaBy4wSq/88A6uSEOCVmNH+lAXClpbY
 vnwrI4jNKRArcezQC0aIuKjEzdVv2WHs98fmQ8VFJFrvnWWGsAUlHvzczQhxv4TEvXd2EGa9
 xJYVFiBrJQRaGCVuvFkL1aov0fj8I9haXgFfiW0HNoDZLAKqEsdnPIBa5SIxv3EFWJwZ6Mft
 b+eAg4cZ6Mn1u/QhxitLHLkFVcEn0XH4LzvMUzvmPWGCsJUlPh46BHWkpMTyS6/ZIGwPiYO3
 GpggodzFJHGxuYt1AqPCLERAz0KyeBbC4gWMzKsYxVILinPTU4uNCoyQo3YTIzi1arntYFxy
 zucQowAHoxIP7wPbCzFCrIllxZW5hxglOJiVRHgTn52LEeJNSaysSi3Kjy8qzUktPsRoCvT/
 RGYp0eR8YNrPK4k3NDUyMzOwNLUwNTOyUBLnfSg9N1pIID2xJDU7NbUgtQimj4mDU6qBMTK1
 r37CP/19Xnnrb83jtbXenymS8quY/Zn4s+3LjrvZyDXImHyTLnjksPOy8dkOc8/ffn85Pygc
 uxNYNNv0YgFjIK+Aru5Ezd3sbCKt2fd8zx+/O82s9UzBJ3udT+eDt8xvdg04HdEkWHQyJe2E
 yjY2Db/j339dXqGlb/IrV59hkqrpFZYyJZbijERDLeai4kQA/b+xqcMDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190506224156epcas4p4e0dbe316e46fc76f4e36f5f23bd61cf1
References: <SN6PR04MB452746C95169477C3DD9C8A786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-2-minwoo.im.dev@gmail.com>
 <CGME20190506224156epcas4p4e0dbe316e46fc76f4e36f5f23bd61cf1@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_155948_682441_1955FA06 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Chaitanya,

Thanks for your kindly review on this.

> I'm not sure if we need change right now, reason :-
> 
> Existing code is pretty straight forward and we are not having

Yeah, the code looks readable.  But I thought it would be nicer if
it can be removed to reduce duplications in code.

> any complicated logic in the helper function. I'll let the

In fact, this is why I have introduced an inline function here.  If it
has complicated logic inside, I would not introduce it. :)

> maintainers decide this.

Thanks, again.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
