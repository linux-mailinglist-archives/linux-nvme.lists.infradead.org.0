Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88B91963A7
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 06:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PA46n75oB1/JzDstwNxhp3lIV/wXWrj2sGMAuUHau/E=; b=c2tF8A5dywnZJE
	vwGy0MCUl40DYUC0PJWt1o7wUdN/RWOQ1jFZdFxEHTjPyPuoxCABe6e0O87Fzd2gNTPMBECqY/m6H
	tIVvszVSmy68qS4VqFmO+Y0iUFLzoXvaHT01SVVsKCe8+IqbIvYa+xT+oupST0IL4g7Xdw0AqRabe
	RlPyVV8/ffy780ML1ENsxBAxhml8W647zS4kWNgbfYMUW/bRyKRteZ9p6iwVl7jxhd9yU96xq/yco
	er9zMTDq5L5Uf1SSquLwnJJ3bJTfty9q1vtMR3+EpawLnG4rNqUXsCrvNfI7MAZ0EY/KH/5afpv8O
	M6sl8a5k8j+jrbzjbItg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI3k1-0002W9-MR; Sat, 28 Mar 2020 05:10:41 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI3jx-0002V3-G9
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 05:10:38 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 48D6F4290F;
 Sat, 28 Mar 2020 01:10:27 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id 0D973428FE;
 Sat, 28 Mar 2020 01:10:07 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] nvme: compat ioctl fixes
Date: Sat, 28 Mar 2020 01:09:07 -0400
Message-Id: <20200328050909.30639-1-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_221037_601097_DDE6649C 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On review of my earlier patch to correct how 32-bit addresses in the
NVME_IOCTL_ADMIN_CMD compat ioctl (via nvme_user_cmd function) were
handled, similar problems were noted in the nvme_user_cmd64 function.

Additionally, NVME_IOCTL_SUBMIT_IO is busted in the compat case because
it not only has the same 32-bit address problem, but additionally the
corresponding nvme_user_io structure padding differs between 32-bit and
64-bit x86 (and some other arches presumably have the same problem).

Note that since I do not know of any users of the NVME_IOCTL_IO64_CMD
or NVME_IOCTL_ADMIN64_CMD ioctls, I have not tested the changes to the
nvme_user_cmd64 function (but these changes are virtually identical
to those done in the other functions function).

Nick Bowler (2):
  nvme: Fix compat NVME_IOCTL_SUBMIT_IO numbering
  nvme: Fix compat address handling in several ioctls

 drivers/nvme/host/core.c        | 47 ++++++++++++++++++++++++---------
 include/uapi/linux/nvme_ioctl.h | 25 ++++++++++++++++++
 2 files changed, 59 insertions(+), 13 deletions(-)

-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
