Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4178F9572B
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 08:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5OpL9OVRYzRKcurpDSjFnaJgUG7StjDkVxJmrtW/97Y=; b=com
	qtGLCGvqn5jhpcBFHW6ggbTuE+0gt8dVw49gHjWK0dGDocPt9gyoPc8n7nJRXm6V+OvBov3QnoJuN
	EHbSvDZC2b1mWsDMxMqLhFQLqJU1e0fPJVytxw/mYEnNwhlz4slsC8K0l/yoZPlxnWIUMrWnZEUKW
	SR8djo+QXFbZESKOCtnFU+tFbZmmljmpgt5dHtX44+Eu3FGFSAR+mAjbnyUUfCH5exHrbR+mp5r06
	BF5k9RJhmwDvNzw5E5uOjxq1GDmxXkaMZ9dXcgCSIiXG30LC+Xrus+96ETxbZjXxlxG1IDu7t51nS
	CIPSBRMtrcoQtTFH2BXmbUbLiE9VYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxQ3-0004yz-39; Tue, 20 Aug 2019 06:14:59 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxPn-0004wn-1k
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 06:14:44 +0000
Received: by linux.microsoft.com (Postfix, from userid 1004)
 id AE5EA20B7188; Mon, 19 Aug 2019 23:14:39 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com AE5EA20B7188
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxonhyperv.com;
 s=default; t=1566281679;
 bh=irR5tenrmHwMixa4DhE9mKUf8q1VdVSaHTLm1Tuq9yA=;
 h=From:To:Cc:Subject:Date:From;
 b=cuZpaUG5UeYZabz6oj8RDw5nXWLrMKQlGvwqEH61vpCcMvvbx+jn98by0EUpmUT6a
 zcb4blqVOXkVebSjaczWLBjfWMWtR/mbapJcKNSpir7WhOaZdS/KrYKp3XAEnsHhyQ
 uq6RDsIUM90aYLW8/6RLLIqSl+EWGZjcVXalIyW0=
From: longli@linuxonhyperv.com
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] fix interrupt swamp in NVMe
Date: Mon, 19 Aug 2019 23:14:26 -0700
Message-Id: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_231443_146626_FE94FCC6 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Long Li <longli@microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Long Li <longli@microsoft.com>

This patch set tries to fix interrupt swamp in NVMe devices.

On large systems with many CPUs, a number of CPUs may share one NVMe hardware
queue. It may have this situation where several CPUs are issuing I/Os, and
all the I/Os are returned on the CPU where the hardware queue is bound to.
This may result in that CPU swamped by interrupts and stay in interrupt mode
for extended time while other CPUs continue to issue I/O. This can trigger
Watchdog and RCU timeout, and make the system unresponsive.

This patch set addresses this by enforcing scheduling and throttling I/O when
CPU is starved in this situation.

Long Li (3):
  sched: define a function to report the number of context switches on a
    CPU
  sched: export idle_cpu()
  nvme: complete request in work queue on CPU with flooded interrupts

 drivers/nvme/host/core.c | 57 +++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  1 +
 include/linux/sched.h    |  2 ++
 kernel/sched/core.c      |  7 +++++
 4 files changed, 66 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
