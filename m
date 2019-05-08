Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3116A18000
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EleXfmPa3dFjiFJ9DdwdPknvswC4Yx2RgW7MLyaclvA=; b=T0a
	3SHntn/Xw/U3bwpPIQWDjZpSoQ965/RttXwpSbvqWFCJ0yzFtvKk+QT24aw2mrngDsTff0fvaqEf4
	Ol3MjsTnwCFxfVpLXVHoNG69M+O/L3auDpP0Qkay8w3Gbwx48eMwYoHth/YpPrCMqO43ZnivTCjTz
	dY0QGW2YkuFNlnX6D121cJw49R1pFgxQCiyPyVGcUg3UxNQdrj/1ZidkJ+QiNAulOS+o+yhqIvylT
	SUbVuj4dX4FffCKA1jULJyhdu1hmFCQJe0V49vcOBpXVNdp+zUOmcn7DLRUUd/1RW41zAgEmTpTqP
	BmhB6rRWZX/4vPAKeAPx0L7PKPIaTtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORZW-0000YE-AK; Wed, 08 May 2019 18:45:42 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORZQ-0000Xu-Ua
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557341137; x=1588877137;
 h=from:to:cc:subject:date:message-id;
 bh=ZzU4xSg7Nwi41Uyq71aPdmlDVybWZj7ktxhzJ3iIkQ0=;
 b=mVASiy7aohxeEnr6nIWUdgsQy5MQeoEQDHejHycePdzkQE4LSLnXB6OB
 dDB5eAsLwO374BrgXE+ev1Epzs/wWbkBfgZmtXDVrLQt01cGyR38ArSIM
 Bj2WvjpJ1nv7IybeiHvE+Yv+vPu4wAC2Ym1jjmbqh2Q7Uidl2+OYVlpnG
 hVrR5VorVZbXn93gAADtpHozLZ8NQSxB111gMzHVrOb/9euIIQF1gGTM2
 ysGENC7OrjJj7QBNNDP4wVL/Quk6GO8HtIeMUgJ5SQKDO72pbcHGbqz5h
 Cdej/wcVb4pD8ZMN0ID1+hGldVzyTudZxzKp0n0upB+03xAGOUpIlb8ae A==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="107826502"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:36:37 +0800
IronPort-SDR: l7vjaBoO/ZDOUJhzoLHgFilZQUu/sOCm4nIpFxLWYaOKa5HE5GjvXyZPgpwz0aecbPns5BslGi
 VxduPAxpK1J98BeCRuEflZZ6OhPIAKkCGRkc0smqvOJ7YyJ49AC7Gnv2IwmHJNYIA5Ah/4KkY8
 +13NksNEEjnR3eMJZHKeNjXjyRyyiHYTIvUEdRaIZKBKKaqrimmJEqHVvXtITnfjs+QxrELo/N
 ll2NlcgPz7n8f+tFAyxcuO0JEtBAH7nrREe1lSlBvdtdD2Ada9Ees2JUFAB6fMN/S1BE/Gi2Pa
 +jA1WbpSBML6kVB8Za1MUFlZ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 08 May 2019 11:14:50 -0700
IronPort-SDR: NM4e/c8KbZ0Y3XaDXsEiXPPbDB/FOePLnv0LBoVohZ7M4OQeDXT6yWeMeKQPl3WmVnMcWqD9Oq
 LvJKIKQGuler6QpDQwmfNnb4Zys2rcImH/6856Ilwlia15GeAIP+t3P/Hz+Ju3T8oV966VGfYz
 mSt2qECqHYFHdbL0iao+3KS2XyzhSlG0pwIjamdVAxuBL+/MoDQPCz9aomAfW0y6dVf2tJYkcE
 Z0cbJ3ajOf4BPRp03+eAiMJfnXlBSXE2tu7etqRqIx0dlipey9uQlAJimeC2VkD5ixl01UQE3f
 bOo=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 08 May 2019 11:36:37 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme-core: add user command filter 
Date: Wed,  8 May 2019 11:36:31 -0700
Message-Id: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114537_068048_315E9B28 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch-series adds a filter to allow only certain user commands.                                   
Right now we use this infrastructure to prevent the user get log page
commands where RAE bit is cleared. We only allow get log pages to be
read with RAE == 0 where we issue the uevent to the userspace so that
user can clear the log pages.

Here we white list the log pages which are only allowed when RAE == 0.
We also allow Vendor Specific log pages irrespective of the RAE.

Chaitanya Kulkarni (3):
  nvme: introduce and use RAE bit macro
  nvme: add sanitize log identifier
  nvme-core: add filter for user commands

 drivers/nvme/host/core.c    | 64 ++++++++++++++++++++++++++++++++++---
 drivers/nvme/target/nvmet.h |  2 +-
 include/linux/nvme.h        |  3 ++
 3 files changed, 64 insertions(+), 5 deletions(-)

-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
