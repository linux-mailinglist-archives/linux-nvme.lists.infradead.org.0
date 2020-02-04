Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B6E15149C
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Feb 2020 04:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RP/zI3oE7l7X4wCOeuMTT8YCCMzrUHpQDNKKiHn7Y70=; b=pBPOtXzkZSEbhk
	4hHOB5Sofqc6ssGEs8H594R75gcYi2Ixi4tsIEhsn0QoU8mrZNjOjMd1AnLBnqc/2cnQ0lePgA0fM
	AFi2ozwjgacnhPiDj8W5lp+cB5haduVrQT/mmiU6S9MtjdFxbNdkOa4lxuHXiBWW4q5YN/iIR19ck
	32eckW1Vz0ghrol44dVAoQvrIf12Svwf/84Dkewxe13CXkFhMRIcq2IYcqk8u3tg4X+mMYWEPEYnM
	WS8Yp7B+cNYMZ0Nh8bVYiTe7y030MtjsxMyc0U2JojUFFsIbbo+05sQCcQiW9PfavqqRw4vNdPzwH
	3iAXYRQBdv7wR9m/G1VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyovl-0003BI-2K; Tue, 04 Feb 2020 03:31:17 +0000
Received: from mx2.didiglobal.com ([111.202.154.82] helo=bsf02.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyove-0003AN-Va
 for linux-nvme@lists.infradead.org; Tue, 04 Feb 2020 03:31:13 +0000
X-ASG-Debug-ID: 1580787053-0e41082815a906a0001-VMfPqL
Received: from mail.didiglobal.com (localhost [172.20.36.204]) by
 bsf02.didichuxing.com with ESMTP id zbgtNBskBKZof9aZ;
 Tue, 04 Feb 2020 11:30:55 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Feb
 2020 11:30:53 +0800
Date: Tue, 4 Feb 2020 11:30:45 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>, <bvanassche@acm.org>,
 <kbusch@kernel.org>, <minwoo.im.dev@gmail.com>, <tglx@linutronix.de>,
 <ming.lei@redhat.com>, <edmund.nadolski@intel.com>
Subject: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and nvme
Message-ID: <cover.1580786525.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and
 nvme
Mail-Followup-To: axboe@kernel.dk, tj@kernel.org, hch@lst.de,
 bvanassche@acm.org, kbusch@kernel.org, minwoo.im.dev@gmail.com,
 tglx@linutronix.de, ming.lei@redhat.com, edmund.nadolski@intel.com,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS02.didichuxing.com (172.20.36.211) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: localhost[172.20.36.204]
X-Barracuda-Start-Time: 1580787055
X-Barracuda-URL: https://bsf02.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 6078
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -0.92
X-Barracuda-Spam-Status: No,
 SCORE=-0.92 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=FB_GET_MEDS, FB_GET_MEDS_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.79763
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 FB_GET_MEDS            BODY: Looks like trying to sell meds
 1.10 FB_GET_MEDS_2          Looks like trying to sell meds
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_193111_437682_7F1A6FA9 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [111.202.154.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This series try to add Weighted Round Robin for block cgroup and nvme
driver. When multiple containers share a single nvme device, we want
to protect IO critical container from not be interfernced by other
containers. We add blkio.wrr interface to user to control their IO
priority. The blkio.wrr accept five level priorities, which contains
"urgent", "high", "medium", "low" and "none", the "none" is used for
disable WRR for this cgroup.

The first patch add an WRR infrastucture for block cgroup.

We add extra four hareware contexts at blk-mq layer,
HCTX_TYPE_WRR_URGETN/HIGH/MEDIUM/LOW to allow device driver maps
different hardsware queues to dirrenct hardware context.

The second patch add a nvme_ctrl_ops named get_ams to get the expect
Arbitration Mechanism Selected, now this series only support nvme-pci.
This operations will check both CAP.AMS and nvme-pci wrr queue count,
to decide enable WRR or RR.

The third patch rename write_queues module parameter to read_queues,
that can simplify the calculation the number of defaut,read,poll,wrr
queue.

The last patch add support nvme-pci Weighted Round Robin with Urgent
Priority Class, we add four module paranmeters as follow:
	wrr_urgent_queues
	wrr_high_queues
	wrr_medium_queues
	wrr_low_queues
nvme-pci will set CC.AMS=001b, if CAP.AMS[17]=1 and wrr_xxx_queues
larger than 0. nvme driver will split hardware queues base on the
read/pool/wrr_xxx_queues, then set proper value for Queue Priority
(QPRIO) in DWORD11. This patch also extends IRQ_AFFINITY_MAX_SETS to 6,
since nvme may use 6 irq sets, if read, default,wrr related queues are
all not equal to 0.

fio test:

CPU:	Intel(R) Xeon(R) Platinum 8160 CPU @ 2.10GHz
NVME:	Intel SSDPE2KX020T8 P4510 2TB

[root@tmp-201812-d1802-818396173 low]# nvme show-regs /dev/nvme0n1
cap     : 2078030fff
version : 10200
intms   : 0
intmc   : 0
cc      : 460801
csts    : 1
nssr    : 0
aqa     : 1f001f
asq     : 5f7cc08000
acq     : 5f5ac23000
cmbloc  : 0
cmbsz   : 0

Run fio-1, fio-2, fio-3 in parallel, 

For RR(round robin) these three fio nearly get same iops or bps,
if we set blkio.wrr for different priority, the WRR "high" will
get more iops/bps than "medium" and "low".

RR:
fio-1: echo "259:0 none" > /sys/fs/cgroup/blkio/high/blkio.wrr
fio-2: echo "259:0 none" > /sys/fs/cgroup/blkio/medium/blkio.wrr
fio-3: echo "259:0 none" > /sys/fs/cgroup/blkio/low/blkio.wrr

WRR:
fio-1: echo "259:0 high" > /sys/fs/cgroup/blkio/high/blkio.wrr
fio-2: echo "259:0 medium" > /sys/fs/cgroup/blkio/medium/blkio.wrr
fio-3: echo "259:0 low" > /sys/fs/cgroup/blkio/low/blkio.wrr

    Test script:
    https://github.com/dublio/nvme-wrr/blob/master/test_wrr.sh

    Test result:
    randread             (RR)IOPS        (RR)latency     (WRR)IOPS       (WRR)latency
    --------------------------------------------------------------------------------
    randread_high        217474          3528.49         404451          1897.17
    randread_medium      217473          3528.56         202349          3793.54
    randread_low         217978          3520.98         67419           11386.43

    randwrite            (RR)IOPS        (RR)latency     (WRR)IOPS       (WRR)latency
    --------------------------------------------------------------------------------
    randwrite_high       144946          5295.34         277401          2766.66
    randwrite_medium     144861          5296.85         138710          5532.28
    randwrite_low        145105          5289.36         46316           16569.54

    read                 (RR)BW          (RR)latency     (WRR)BW         (WRR)latency
    --------------------------------------------------------------------------------
    read_high            956191          410823.48       1790273         219427.11
    read_medium          920096          426887.25       897644          437760.17
    read_low             928076          423248.05       302899          1297195.34

    write                (RR)BW          (RR)latency     (WRR)BW         (WRR)latency
    --------------------------------------------------------------------------------
    write_high           737211          532359.31       1194013         328970.70
    write_medium         759052          516902.66       600626          653876.69
    write_low            782348          501309.47       203754          1928779.39

Changes since V4:
 * calculate the number of irq sets by the queue count of each HCTX type, and 
   drops patch: genirq/affinity: allow driver's discontigous affinity set
 * extends IRQ_AFFINITY_MAX_SETS to 6 instead of 7.

Changes since V3:
 * only show blkio.wrr in non-root cgroups.
 * give bs/iops and latency in test result.

Changes since V2:
 * drop null_blk related patch, which adds a new NULL_Q_IRQ_WRR to
	simulte nvme wrr policy
 * add urgent tagset map for nvme driver
 * fix some problem in V2, suggested by Minwoo

Changes since V1:
 * reorder HCTX_TYPE_POLL to the last one to adopt nvme driver easily.
 * add support WRR(Weighted Round Robin) for nvme driver

Weiping Zhang (4):
  block: add weighted round robin for blkcgroup
  nvme: add get_ams for nvme_ctrl_ops
  nvme-pci: rename module parameter write_queues to read_queues
  nvme: add support weighted round robin queue

 block/blk-cgroup.c         |  91 ++++++++++++++++
 block/blk-mq-debugfs.c     |   4 +
 block/blk-mq-sched.c       |   5 +-
 block/blk-mq-tag.c         |   4 +-
 block/blk-mq-tag.h         |   2 +-
 block/blk-mq.c             |  12 ++-
 block/blk-mq.h             |  20 +++-
 block/blk.h                |   2 +-
 drivers/nvme/host/core.c   |   9 +-
 drivers/nvme/host/nvme.h   |   2 +
 drivers/nvme/host/pci.c    | 260 ++++++++++++++++++++++++++++++++++++---------
 include/linux/blk-cgroup.h |   2 +
 include/linux/blk-mq.h     |  18 ++++
 include/linux/interrupt.h  |   2 +-
 include/linux/nvme.h       |   3 +
 15 files changed, 375 insertions(+), 61 deletions(-)

-- 
2.14.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
