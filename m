Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D51C12D7C
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ANNhwBvAsUF66n0hInC5J1D9QdBL3P4eEx4GR62a5Vw=; b=aGJ
	Q1AeI1FhbwDehKMsfXkDUHmWJL5+j/dPIPo7VYwGAQ5doV34qvZ7WzvFnWHBO7khvqZwO5ztFO59i
	RbvizQiRv/oG/+FUcGQMsdxI4YggMgTiLJY9yMmotaIpet3xGe2MfQI3BxtGzaIeSayo6xk2oXygO
	w5K/lSs3GPZqYRTWSBMZHiG6+fYs7/NY2tumn0NXDsQgjbDcT9yfQ+3DqJlUkCmqqUw/VkTEehsJJ
	YQnB8m8ZDQWQWPO2GiCLZYEz96mI0RR6WYdBCLHDgkd+h7tEHolAalsprX1ovNmDimsozhJEuv2JT
	0zVMVwriTIu+2B3POxMVsqkuXd7/qwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXHJ-0002wh-AA; Fri, 03 May 2019 12:27:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXH7-0002mt-Qf
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:26:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 04D24AD93;
 Fri,  3 May 2019 12:26:47 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 0/2] nvme: validate CNTLID
Date: Fri,  3 May 2019 14:26:40 +0200
Message-Id: <20190503122642.59317-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_052650_012105_3907B68D 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

here are two patches to validate correct CNTLID information.
A controller might violate the constrain the each CNTLID has to
be unique within a subsystem, which then would cause the host
to crash.
So these patches prevent this situation by validate the CNTLID
and not use the cntlid as part of the device name.

As usual, comments and reviews are welcome.

Changes to v1:
- split cntlid validation into a separate helper and moved to
  nvme_init_subsystem()

Hannes Reinecke (2):
  nvme-multipath: avoid crash on invalid subsystem cntlid enumeration
  nvme: validate cntlid during controller initialisation

 drivers/nvme/host/core.c      | 27 +++++++++++++++++++++++++++
 drivers/nvme/host/multipath.c |  2 +-
 2 files changed, 28 insertions(+), 1 deletion(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
