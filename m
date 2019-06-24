Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAAB501EF
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 08:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qmoBOHzp5w7bVzrKierId2fvxvuQZs8o18EYwBN+JTo=; b=LOk+88qHQMfBsm
	cGAeny/OOLGo/5gExwb+k6zOqv/knEvDn4fGwOwlMQpixqHMevZHLNof8L4uwbQjGaJW03nuQEEFA
	ApU1fwv7ksfNsQFqubWJq2mrX4n1YbAJLLxYzA18vROrYrtL/i3NmyPJw9bGycn4ZZiQGm33fhmBM
	4sVj4wDKaV2OXKPVCMFSbWWbgX9s+dJSk7Z92PlebwSIW9zICtzCc1S8FPqpgonvgKwQb2y9AaPCO
	pqAUsOkIKbG4ASn3puC96D8KKNrSAn6MQNU4XIWyGOAU4SYS0mf3ENa4dEmkQOOmTYHYvoHTlJDXW
	nq0L5ALUL0ApwHGFyaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIDk-00076g-H4; Mon, 24 Jun 2019 06:12:52 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIDb-000712-ML; Mon, 24 Jun 2019 06:12:44 +0000
Date: Mon, 24 Jun 2019 08:12:41 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme updates for 5.3
Message-ID: <20190624061241.GA31634@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A large chunk of NVMe updates for 5.3.  Highlights:

 - improved PCIe suspent support (Keith Busch)
 - error injection support for the admin queue (Akinobu Mita)
 - Fibre Channel discovery improvements (James Smart)
 - tracing improvements including nvmetc tracing support (Minwoo Im)
 - misc fixes and cleanups (Anton Eidelman, Minwoo Im, Chaitanya Kulkarni)


The following changes since commit 474a280036e8d319ef852f1dec59bedf4eda0107:

  cgroup: export css_next_descendant_pre for bfq (2019-06-21 02:48:34 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.3

for you to fetch changes up to 7e31d8215fd8cb1c13b47e23f1136545010e00de:

  Documentation: nvme: add an example for nvme fault injection (2019-06-21 11:15:50 +0200)

----------------------------------------------------------------
Akinobu Mita (3):
      nvme: prepare for fault injection into admin commands
      nvme: enable to inject errors into admin commands
      Documentation: nvme: add an example for nvme fault injection

Anton Eidelman (1):
      nvme: fix possible io failures when removing multipathed ns

Chaitanya Kulkarni (2):
      nvme-pci: set the errno on ctrl state change error
      nvme-pci: clean up nvme_remove_dead_ctrl a bit

James Smart (8):
      nvmet: add transport discovery change op
      nvmet-fc: add transport discovery change event callback support
      nvme-fcloop: add support for nvmet discovery_event op
      lpfc: add support to generate RSCN events for nport
      lpfc: add nvmet discovery_event op support
      lpfc: add support for translating an RSCN rcv into a discovery rescan
      lpfc: add sysfs interface to post NVME RSCN
      nvme-fc: add message when creating new association

Keith Busch (2):
      nvme: export get and set features
      nvme-pci: use host managed power state for suspend

Minwoo Im (10):
      nvme: introduce nvme_is_fabrics to check fabrics cmd
      nvme-pci: remove unnecessary zero for static var
      nvme-pci: remove queue_count_ops for write_queues and poll_queues
      nvme-pci: adjust irq max_vector using num_possible_cpus()
      nvme-pci: properly report state change failure in nvme_reset_work
      nvme-trace: do not export nvme_trace_disk_name
      nvme-trace: move opcode symbol print to nvme.h
      nvme-trace: support for fabrics commands in host-side
      nvme-trace: print result and status in hex format
      nvmet: introduce target-side trace

 .../fault-injection/nvme-fault-injection.txt       |  56 ++++++
 drivers/nvme/host/core.c                           |  45 +++--
 drivers/nvme/host/fabrics.c                        |   2 +-
 drivers/nvme/host/fault_inject.c                   |  41 +++--
 drivers/nvme/host/fc.c                             |   6 +
 drivers/nvme/host/nvme.h                           |  42 +++--
 drivers/nvme/host/pci.c                            | 143 +++++++++++----
 drivers/nvme/host/trace.c                          |  64 ++++++-
 drivers/nvme/host/trace.h                          |  66 ++-----
 drivers/nvme/target/Makefile                       |   3 +
 drivers/nvme/target/core.c                         |  12 +-
 drivers/nvme/target/discovery.c                    |   4 +
 drivers/nvme/target/fabrics-cmd.c                  |   2 +-
 drivers/nvme/target/fc.c                           |  13 +-
 drivers/nvme/target/fcloop.c                       |  37 ++++
 drivers/nvme/target/nvmet.h                        |   2 +
 drivers/nvme/target/trace.c                        | 201 +++++++++++++++++++++
 drivers/nvme/target/trace.h                        | 141 +++++++++++++++
 drivers/scsi/lpfc/lpfc.h                           |   2 +
 drivers/scsi/lpfc/lpfc_attr.c                      |  60 ++++++
 drivers/scsi/lpfc/lpfc_crtn.h                      |   4 +
 drivers/scsi/lpfc/lpfc_els.c                       | 127 +++++++++++++
 drivers/scsi/lpfc/lpfc_hbadisc.c                   |  35 ++++
 drivers/scsi/lpfc/lpfc_hw.h                        |   2 +
 drivers/scsi/lpfc/lpfc_nvme.c                      |  44 +++++
 drivers/scsi/lpfc/lpfc_nvmet.c                     |  17 ++
 drivers/scsi/lpfc/lpfc_sli.c                       |   1 +
 include/linux/nvme-fc-driver.h                     |   6 +
 include/linux/nvme.h                               |  66 ++++++-
 29 files changed, 1110 insertions(+), 134 deletions(-)
 create mode 100644 drivers/nvme/target/trace.c
 create mode 100644 drivers/nvme/target/trace.h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
