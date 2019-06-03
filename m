Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43B9327C5
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 06:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICqa5+P+8hDU5mA3yRD6fjFXnYyGH6ba2YcJg6uqlA=; b=M9YMITpq/i/SZV
	D5yIoJ6890BKi6iFsw43xZiMTNZyHRMVV8Zarl+actxwrrOimfr8XinBgfhEtMJfGrhd4Z900sTna
	9TgQEoVuz6UHDjf4Wgtzy3Ock8w+z0tq4Nu+5C1VxUDQlGk7eISpaGC6pxAklxlLXCzJ0zVUvqKNk
	vE/zfwoL0GlwMO2y29QRV0enMuiiB9bI9SEJZkc3AfVVUwNpoBf1rHMpsiDD6Np13VpLJydE/LfHT
	VNL3AVAbDYReb6AjNyYedFXfHKM62UWW92DskvMsVIgYwUiwqkdJRY3yOTyRMxgfW59jkKBPH9Hth
	z7XeKhvAVgpjiW/kqyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXejR-00061X-5b; Mon, 03 Jun 2019 04:38:01 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXejM-00061B-0K
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 04:37:57 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190603043751epoutp015bd80320c220b09c98725d18c292a24b~kllb6uUB82642926429epoutp01i
 for <linux-nvme@lists.infradead.org>; Mon,  3 Jun 2019 04:37:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190603043751epoutp015bd80320c220b09c98725d18c292a24b~kllb6uUB82642926429epoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559536671;
 bh=NeMBAGjxVjixVQk8Pi6TWDsfHzxxbkzyZauYchMkKyk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=b4JG6wH7B4AbKuhLmHlfXg29C3uPUcfglX1z+UwgGWuqP9TkSRUDiNWgy5nxUuEAX
 JEnRvZ1lvdrdemNKObqcimwTnUMUYtQ59u+Vnp6bnSQg954EG3yyL7NxWjjPHfnh17
 jyPFslW7SeEFNKcIL2XfU/F4JQQ7LqNvl+M9C0Y0=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.184]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190603043749epcas2p398cc9a82bb0c6e3fe1600f45593f7898~kllabDxSF1203412034epcas2p3e;
 Mon,  3 Jun 2019 04:37:49 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-c7-5cf4a41d7e97
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 DB.4C.04195.D14A4FC5; Mon,  3 Jun 2019 13:37:49 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v2 3/3] Documentation: nvme: add an example for nvme
 fault injection
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1559483421-11361-4-git-send-email-akinobu.mita@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190603043749epcms2p137aceeb2afc656afe7e349d29be1480f@epcms2p1>
Date: Mon, 03 Jun 2019 13:37:49 +0900
X-CMS-MailID: 20190603043749epcms2p137aceeb2afc656afe7e349d29be1480f
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0gUURTGuc46M2or4/roZEnL9BAFc1fabQyVIq2lLLT+KETYJndQaV/M
 7EobhPb0UVaWlWhoQuUrFR/Z2gbVmkplWQaiUlaQFWupC9HDitqX1H8/vnvud8537iUxSS0e
 SebrTRyvZ7U0Hijq6YtRxkVd/ZIta3y/knHcK0HMnzsDONPU0u/HnLOPIqbu+hTBzJcGMW3T
 syLm2+hZYgOpqjg6Q6h6q18RquHJDpGqs7kUV3VdLVTZxotwlXNqQpRBZGmT8jhWw/FSTp9j
 0OTrc5PpbbvUm9QKpUweJ09k1tFSPavjkunU9Iy4zfla11C0tIDVml1SBisIdHxKEm8wmzhp
 nkEwJdOcUaM1yuXGNQKrE8z63DU5Bt16uUyWoHBV7tXmTbc+x4xbD/RefkgUoeQyRJJArYWS
 SrwMBZISyorg4715zK2LqRD4bQ0tQwFkKJUFg3N9uFuWUMvhu0PmlWNgxjbk72acioaiCw6R
 m8OoNLBdu43clhj1FcGvwTueA6DEUFU85eOlcKvhJnJzALUFZq84cK8eDuMtn4kFnh2oQ14O
 g+OTTzAvh8CbHzbkHR9gcibFi4XQ3ci42wJ1DMHYp1bf1Xg4/MHpaSumtsP46zmPvYhaBZMn
 u3yWqVBZ/tJTg7ki3vp82bMFzJWx/Xa8134FPJjwVQRDSd9vYiGUtfadn5dXgNNu9zkugYaR
 aV8oFZyfqPEt+TGCro4x/CySVv/bc/V/jav/Nb6CsGYUwRkFXS4nJBjl/79rJ/L8zdg0K6p6
 mm5HFInoReIq4ku2xJ8tECw6OwISo8PETUpntkSsYS0HOd6g5s1aTrAjhSt/BRYZnmNw/XS9
 SS1XJCiVskQFo1AmMPRicVfQeLaEymVN3H6OM3L8wj0/MiCyCJlP9Qv7oJKefjtkq8GGz2za
 M3pxEN/vPxGsHct89Si2fsvOZS8uhluSgiPq79bXhb0obKXLQ55s7GkaiVLszjxjaftqDqSP
 zh0sjx5LU7Y7TzcmOmIvVKxWpxR8eLbjCB/Re4kP2mxR2DOGYrqTXhqLNda7929w6w4pM8t+
 zsedoEVCHiuPxXiB/QuqK5bEsQMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190602135117epcas4p14feefbe2556a469008a7a499174e5b43
References: <1559483421-11361-4-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190602135117epcas4p14feefbe2556a469008a7a499174e5b43@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213756_217381_5E2BF6D1 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
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
