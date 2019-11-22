Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CB610672D
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 08:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0caOx+O+DxaMI/CUBVFYdqDk7wElr3nnaL2PB3fTm0M=; b=AOG3iCUFnzYDgg
	ReYdIz+sP9s/yn0ye1xPb1lpE9d1Kz47svCtKVelXBG2QjCuTR+W4FbG2qRhOlXpbX8cgMuZpcXyH
	vFt0B9Nf79OcRVcYxIEkjH0p1IEWqjPiuDHm3VuK1HfXh5rc3WSYgTltOEYC0DbK4byxcgna0v7wE
	PmWGYx6Cvn3BqavpzvTwO8cZcI6Kguk2mQmqQVUmRsg+Xl8ctWTVs40ek8jaErU3i6DMuQ0wAOH40
	ubaHGak2qjg8XHB2JHKaZYPKGUFgDTxnT8XbudE8YcpRlcP8LEmnyKaWG4Jz61WDhXeLZomR54+AL
	hzD/MEUt8vAnxoXecbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3af-0003wD-8k; Fri, 22 Nov 2019 07:42:53 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3a4-0003bH-6S
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 07:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574408536; x=1605944536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HCjAywswqovhdsPys+Bvgm9UingQFPrVMVUk4cpO9ao=;
 b=IsK5BjW8w7gzlSbz4BxQ98IZlvLZG77vZbambiiuuFUaMvs1dQArYkwY
 pNT+7MT4QCVPdj18uPUaG39tfa/pg38Rr5SyZBgMOVIdeUUQxm+okUi/R
 nfO6c1IZY9pCSJPO4T4kteSBt9ijU9QtRuzEBiIXGMB60CZDZ5F8KH0mF
 4FTVcWos8QyTIMV2Aqgr/7CAMFJmQyC+XFJwbgXuTsdo1+satNe7mOCUo
 DC81FQUDyLA+WGqeQmRSFQnaZJTwX9c5s1vOHMZA8y0igFOUg4YSv+srm
 n2g6Mkb1kqQrVmaVM2xFprjG9ygQnNyJMS8Ko3AT9AUWSfsaqaGB22tQo A==;
IronPort-SDR: 6VI9wPdw2uqBtMh2mG0vaPA6xsCAiacM3ROz3Hm5PBt9N7XUnhaUPRi5JlOZYH2B6qxz039ltC
 yoGZSrg3g4xw0aO4jRarwghco+HLIzCuARPmt0E6Mpu9iehdpIC8f2u+sEP4j8/jG6Kcyi3L2V
 vR2a1YSjGkkansb7FeLNfa/yDp5K1U2Bf0fBYT/OCmoP1dnNbtjVCtQ++oTPYW5lkwnhSQGR1d
 al5TeRqQW+k1iS9d2Eb615RyqjE8aY3Ehz7cv2OYaYuAcY/mLvdgftwW2lXHyHZkA/03xTs2rU
 efc=
X-IronPort-AV: E=Sophos;i="5.69,229,1571673600"; d="scan'208";a="128163468"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Nov 2019 15:42:14 +0800
IronPort-SDR: Cq+9mEl8D06Z0HNzpXcKQHyionkbZr7Uxw0PQcDg8KZ9XzsBL8/CJaWzkLS8Zwy0KRnF1ZRtOM
 6MgrapXsSin+pTxS6Y+Pxns8yfioqnCYklM6TAH8sr000fx9gTP1vvzchixebvgvKrxKq8ox4o
 8PtWejTiyQhTYPzlKiR5a4dbnn7QaD20DVbrI2jOUr23tRdwIdWsdU0eAHjQOUxoJji+7butLa
 XSNLa/XOjxGhHNwocyeCiVFDgefctQfwkvq9sFHv49hYnyLpr/dLHZlhaXspsRKZzGSJaFpuon
 jXN62JlPd943FP1YWSnR3Fpb
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 23:37:00 -0800
IronPort-SDR: EflNUzCQ2g01OsYyNoPM/8ULJbw1ybK2pYMNoZb1J1znbkIaWAxsIWqCVSdn5cEiJbItJKy1it
 jd0aXnls63VTlTtHb9GegXAGWz1nee728LKdL2j1FvunlcFDOGL9BlOT2MCDSF5OJpqAB0v3az
 3IPK9azsACQnDqfJHmut8RAu56tmRVUc82NeASUEBx7McbnwlPsAG+jirVtcgjDtvDKyQmw/4e
 2weeHAVb/uO2Zu3+jqViVCiDQbgnZcJ7CBeyZjB2Z0DjWeJ2B2lV6irKJ79ShwOHti54pGalw9
 bsw=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 21 Nov 2019 23:42:14 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] nvmetcli: make model and ctrl-id configurable
Date: Thu, 21 Nov 2019 23:42:11 -0800
Message-Id: <20191122074213.12232-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_234216_308344_080CF89E 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This patch series allows users to set the subsys model and ctrl-id
fields.

Chaitanya Kulkarni (2):
  nvmetcli: allow setting of the cntlid[min|max]
  nvmetcli: allow setting of the subsystem model

 nvmetcli | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

-- 
2.22.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
