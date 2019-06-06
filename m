Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8C37D7E
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nb13vz+W+pDuHiXlWQuvtt8BTqYvXpAl88+A4AU65+0=; b=M51wje+b+Y/inh
	GAGHSd0JtRayz9piIQaKR6Onxek/dTOSy7q8YZU8FJ7BHcNCGcrxEYbssZpI4tVqUjFPJofmi3YtM
	m0TTdkESjU4uNDOX/5g+QgfyCBZzC3S+JX9ajm67h+TAhWan++IkpCQMgDZ3MWKV4Ihxp3NAMqQhy
	mVZXAcHao8r9U4InEhmojMFewag4tt91JeQ1hOzTd8LnkCKUJZK1vrNwuwgoe42Ve2VW6kFckOUAP
	WVSmlKIN/HDPWeUx4rJwd/k1Wo4sC8dagTDJ85OxpWGkxozCJPkO2Dzm0OsM2poD5XteyXcS78jy2
	91I8n51cyJ2P73g2h8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyKU-0002dM-SZ; Thu, 06 Jun 2019 19:45:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKH-0002a1-Kj
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:45:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so1326278pla.7
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=98vl1ihrkLfoz1v9DLdwjP53PCi0VaXkfs2Zx7LDRrA=;
 b=kKyrWWk0JKZV++g4puv5ZH1USyS/R4dPZ0OnIGUu8mfKETy8OE/AzjWdy+YWIK14Xj
 u0KBuJ4st9dpKDnE/7qUgKkIGnJwf82UmpEFSZh5AfVO8wX57OWhGgIpYbgGjvXw/8BG
 gMMDsiAesabMLhmvsLS7J2r43asqa7SkJ21OjwqqimN2v3BzOlWQEtMQtO6aIayjc3uP
 LascbAE3OxyrF8STLVXNdF6LDBi5h5yEhyjZXmH0K7sfV7QMBkvPZWVpmswC/Dbd+feN
 7bGmVmOtGSW0AuhooIVz1YVHvbJ6oBLXy5hNYe8ShJGcqOXhbPngn4sM7n7OH034vebp
 DV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=98vl1ihrkLfoz1v9DLdwjP53PCi0VaXkfs2Zx7LDRrA=;
 b=qvcsg/LAzJXUMRh8ePFhB/6twMOZ1mRZDtZKccVNztOEigSMoufPW0J19AE/yhCtJh
 KQAXD6NSqBIeiucxjX/HlTqhg6AwmigxuZc6kW9y9heStv8njjJQfODKgh9QUcrZBrbt
 kYdvLcZO3mJMH2Rfcjeew5Qwi3NhTMWU2nJ2qLHLHUCF+waAIJ1xPxr8UGDhpje8gdy9
 j4err3iqS0Yn4hWJZIkXnsRMIs1QG5EstemrDcBEyvAg3ZDIFg5CISTMLscHFKCDtwG8
 BTkOWMpmE16bIL1P2drSnJ3jyJxfqZdrp0y6jDazhImUjsh5uymVMDwGVZ+jTABxtojA
 jsmQ==
X-Gm-Message-State: APjAAAWy29kWJ/opdtNBn6IQ1vCRoELQkZUiOd2lHycx9atG/UIdbi0q
 c6ipdL7mMONVKK6wqGaS/bqWoUoKslc=
X-Google-Smtp-Source: APXvYqyyDcWPlJOEZSOmD+El0+9Q34C0okC0nTask/VOALn2izdC0ONQ242ji3f/juSpGrgVo5ZjOg==
X-Received: by 2002:a17:902:29e6:: with SMTP id
 h93mr49391744plb.297.1559850327156; 
 Thu, 06 Jun 2019 12:45:27 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:26 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 0/7] nvme-trace: Add support for fabrics command
Date: Fri,  7 Jun 2019 04:45:05 +0900
Message-Id: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124532_342457_CD02D307 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is 7th series to support for commands tracing in host and target-side
for not only admin and nvm commands, but also fabrics commands.

This series has been applied suggestion points from Christoph, and it
has added patches for host-side which has exactly the same things with
the target-side as we discussed.

This series has been tested with the target backed loop device, and the
target with RDMA.

Example (RDMA):
  1) target-side
 kworker/0:2-1844  [000] ....    65.451612: nvmet_req_init: nvmet_: qid=0, cmdid=0 cmd=(nvme_fabrics_type_connect, recfmt=0, qid=0, sqsize=31, cattr=0, kato=15000)
kworker/0:1H-1056  [000] ....    65.454270: nvmet_req_complete: nvmet1: qid=0, cmdid=0, res=0xffff888000000001, status=0x0
kworker/0:1H-1056  [000] ....    65.456356: nvmet_req_init: nvmet1: qid=0, cmdid=6 cmd=(nvme_fabrics_type_property_get, attrib=1, ofst=0x0)
kworker/0:1H-1056  [000] ....    65.456663: nvmet_req_complete: nvmet1: qid=0, cmdid=6, res=0x200f0003ff, status=0x0
kworker/0:1H-1056  [000] ....    65.459008: nvmet_req_init: nvmet1: qid=0, cmdid=7 cmd=(nvme_fabrics_type_property_set, attrib=0, ofst=0x14, value=0x460001)
kworker/0:1H-1056  [000] ....    65.459101: nvmet_req_complete: nvmet1: qid=0, cmdid=7, res=0xffff88807ac61420, status=0x0
kworker/0:1H-1056  [000] ....    65.461032: nvmet_req_init: nvmet1: qid=0, cmdid=8 cmd=(nvme_fabrics_type_property_get, attrib=0, ofst=0x1c)
kworker/0:1H-1056  [000] ....    65.461118: nvmet_req_complete: nvmet1: qid=0, cmdid=8, res=0x1, status=0x0
kworker/0:1H-1056  [000] ....    65.462977: nvmet_req_init: nvmet1: qid=0, cmdid=9 cmd=(nvme_fabrics_type_property_get, attrib=0, ofst=0x8)
kworker/0:1H-1056  [000] ....    65.463087: nvmet_req_complete: nvmet1: qid=0, cmdid=9, res=0x10300, status=0x0
kworker/0:1H-1056  [000] ....    65.465135: nvmet_req_init: nvmet1: qid=0, cmdid=6 cmd=(nvme_fabrics_type_property_get, attrib=1, ofst=0x0)
kworker/0:1H-1056  [000] ....    65.465234: nvmet_req_complete: nvmet1: qid=0, cmdid=6, res=0x200f0003ff, status=0x0
...
kworker/0:1H-1056  [000] ....    65.569340: nvmet_req_init: nvmet1: disk=/dev/nvme0n1, qid=6, cmdid=49, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read, slba=0, len=7, ctrl=0x0, dsmgmt=0, reftag=0)
      <idle>-0     [000] d.h.    65.570140: nvmet_req_complete: nvmet1: disk=/dev/nvme0n1, qid=6, cmdid=49, res=0xffff88807a3b8b90, status=0x0
kworker/0:1H-1056  [000] ....    65.573208: nvmet_req_init: nvmet1: disk=/dev/nvme0n1, qid=6, cmdid=50, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read, slba=8, len=7, ctrl=0x0, dsmgmt=0, reftag=0)
      <idle>-0     [000] d.H.    65.573790: nvmet_req_complete: nvmet1: disk=/dev/nvme0n1, qid=6, cmdid=50, res=0xffff88807a3b8ba0, status=0x0
kworker/0:1H-1056  [000] ....    65.585858: nvmet_req_init: nvmet1: disk=/dev/nvme0n1, qid=3, cmdid=1, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read, slba=1048448, len=7, ctrl=0x8000, dsmgmt=7, reftag=0)
      <idle>-0     [000] d.h.    65.586238: nvmet_req_complete: nvmet1: disk=/dev/nvme0n1, qid=3, cmdid=1, res=0xffff88807c9e95c0, status=0x0
kworker/0:1H-1056  [000] ....    65.587726: nvmet_req_init: nvmet1: disk=/dev/nvme0n1, qid=3, cmdid=2, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read, slba=1048560, len=7, ctrl=0x8000, dsmgmt=7, reftag=0)
      <idle>-0     [000] d.h.    65.587982: nvmet_req_complete: nvmet1: disk=/dev/nvme0n1, qid=3, cmdid=2, res=0xffff88807c9e95d0, status=0x0

  2) host-side
  nvme-2318  [007] ....    64.668667: nvme_setup_cmd: nvme0: qid=0, cmdid=0 cmd=(nvme_fabrics_type_connect recfmt=0, qid=0, sqsize=31, cattr=0, kato=15000)
<idle>-0     [007] ..s.    64.673720: nvme_complete_rq: nvme0: qid=0, cmdid=0, res=0xffff888000000001, retries=0, flags=0x0, status=0x0
  nvme-2318  [007] ....    64.673882: nvme_setup_cmd: nvme0: qid=0, cmdid=6 cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
<idle>-0     [007] ..s.    64.676172: nvme_complete_rq: nvme0: qid=0, cmdid=6, res=0x200f0003ff, retries=0, flags=0x0, status=0x0
  nvme-2318  [007] ....    64.676306: nvme_setup_cmd: nvme0: qid=0, cmdid=7 cmd=(nvme_fabrics_type_property_set attrib=0, ofst=0x14, value=0x460001)
<idle>-0     [007] ..s.    64.678340: nvme_complete_rq: nvme0: qid=0, cmdid=7, res=0xffff88807ac61420, retries=0, flags=0x0, status=0x0
  nvme-2318  [007] ....    64.678363: nvme_setup_cmd: nvme0: qid=0, cmdid=8 cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x1c)
<idle>-0     [007] ..s.    64.680215: nvme_complete_rq: nvme0: qid=0, cmdid=8, res=0x1, retries=0, flags=0x0, status=0x0
  nvme-2318  [007] ....    64.680240: nvme_setup_cmd: nvme0: qid=0, cmdid=9 cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x8)
<idle>-0     [007] ..s.    64.682335: nvme_complete_rq: nvme0: qid=0, cmdid=9, res=0x10300, retries=0, flags=0x0, status=0x0
  nvme-2318  [007] ....    64.682474: nvme_setup_cmd: nvme0: qid=0, cmdid=6 cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
<idle>-0     [007] ..s.    64.684448: nvme_complete_rq: nvme0: qid=0, cmdid=6, res=0x200f0003ff, retries=0, flags=0x0, status=0x0
...
worker/u18:2-1945  [005] ....    64.786215: nvme_setup_cmd: nvme0: disk=nvme0c0n1, qid=6, cmdid=49, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read slba=0, len=7, ctrl=0x0, dsmgmt=0, reftag=0)
      <idle>-0     [005] d.h.    64.790116: nvme_complete_rq: nvme0: disk=nvme0c0n1, qid=6, cmdid=49, res=0xffff88807a3b8b90, retries=0, flags=0x0, status=0x0
worker/u18:2-1945  [005] ....    64.790287: nvme_setup_cmd: nvme0: disk=nvme0c0n1, qid=6, cmdid=50, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read slba=8, len=7, ctrl=0x0, dsmgmt=0, reftag=0)
      <idle>-0     [005] d.h.    64.794233: nvme_complete_rq: nvme0: disk=nvme0c0n1, qid=6, cmdid=50, res=0xffff88807a3b8ba0, retries=0, flags=0x0, status=0x0
ystemd-udevd-2328  [002] ....    64.803350: nvme_setup_cmd: nvme0: disk=nvme0c0n1, qid=3, cmdid=1, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read slba=1048448, len=7, ctrl=0x8000, dsmgmt=7, reftag=0)
      <idle>-0     [000] ..s.    64.805254: nvme_complete_rq: nvme0: disk=nvme0c0n1, qid=3, cmdid=1, res=0xffff88807c9e95c0, retries=0, flags=0x0, status=0x0
ystemd-udevd-2328  [002] ....    64.805389: nvme_setup_cmd: nvme0: disk=nvme0c0n1, qid=3, cmdid=2, nsid=0x1, flags=0x0, meta=0x0 cmd=(nvme_cmd_read slba=1048560, len=7, ctrl=0x8000, dsmgmt=7, reftag=0)
      <idle>-0     [000] ..s.    64.807072: nvme_complete_rq: nvme0: disk=nvme0c0n1, qid=3, cmdid=2, res=0xffff88807c9e95d0, retries=0, flags=0x0, status=0x0

Please review.
Thanks,

Changes to V6:
  - Removed the first patch by a suggestion from Christoph.  The helper
    nvmet_req_to_ctrl() has been moved to the last commit which
    introduces the target-side tracing.
  - Symbolic print for the opcodes for admin, nvm, and fabrics have been
    moved to <linux/nvme.h> to be shared between host and target side.
    It's just a bunch of macros so that we don't share the actual code
    as suggested by Christoph.
  - Print "device_path" when I/O commands come in and out.  The uuid
    will make the trace line too long so that we just can know the
    backed device for the request.
  - From the 2nd patch to 6th patch, they have been added to this series
    to make sure the host-side trace supports the exactly same thing
    with the target-side introduced.

Changes to V5:
  - Provide trace code to the target-side instead of a common code
    shared between host and target to avoid disadvantages something bad
    for the performance like cache miss.  It has been suggested by
    Christoph.
  - Removed the third patch out of this series because that has nothing
    to do with this series.
  - Merged the last two commits into a single commit for the review.

Changes to V4:
  - Add Reviewed-by: tag from Sagi. (Thanks to Sagi)
  - Consider endianness for cqe->status when assigning the value in
    trace
  - Add more descriptions about the variable arguments in events.

Changes to V3:
  - Remove additional argument from the caller level.

Changes to V2:
  - Provide a common code for both host and target. (Chaitanya)
  - Add support for tracing requests in target-side (Chaitanya)
  - Make it simple in trace.h without branch out from nvme core module
    (Christoph)

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitany

Minwoo Im (7):
  nvme: trace: do not EXPORT_SYMBOL for a trace function
  nvme: trace: move opcode symbol print to nvme.h
  nvme: trace: put cid with le16_to_cpu()
  nvme: trace: support for fabrics commands in host-side
  nvme: trace: filter out unnecessary fields for fabrics
  nvme: trace: print result and status in hex format
  nvmet: introduce target-side trace

 drivers/nvme/host/trace.c    |  88 +++++++++++++-
 drivers/nvme/host/trace.h    |  86 ++++----------
 drivers/nvme/target/Makefile |   3 +
 drivers/nvme/target/core.c   |   8 ++
 drivers/nvme/target/trace.c  | 222 +++++++++++++++++++++++++++++++++++
 drivers/nvme/target/trace.h  | 140 ++++++++++++++++++++++
 include/linux/nvme.h         |  59 ++++++++++
 7 files changed, 545 insertions(+), 61 deletions(-)
 create mode 100644 drivers/nvme/target/trace.c
 create mode 100644 drivers/nvme/target/trace.h

--
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
