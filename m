Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8FC8D09D
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 12:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EaQghOMTia9P9IweaBr7d0qjMC9TTHAsrib67lwmKFs=; b=svP
	wjPbLhjT/VjK++4BF07QALnUzJGud9/J8me4ulEOwmwn/5/H2D5wW5++qCGQ5NrIHlBXk37iP8GX9
	GuXwPynMIwGoEAbbQl4VdCgfDFOsLuwOuEZGAnT3bAadvtj77YFNtJU/PgJpcdGnZGm5ERvKenNfo
	HiPZavozr1MVXXOaJ9Cc6FMSKDJpSvAQJwZ4/VDgwjD2Os11CYVubbptxwteHtSGvquxAANc4er88
	DwBTw4Mxq6SLRjc9qlYK1GZAR0V0XWmCrazZ+nLIqvbMtNm94Q8Fer19/8Qqm30zttao7ZX+MKPGV
	2Qeg2X5lmkR5vKJ5QB/yV6XjC8AA3Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqOL-0000u6-K7; Wed, 14 Aug 2019 10:20:29 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqNp-0007oL-Cr
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 10:20:00 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 14 Aug 2019 13:19:43 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7EAJhbB029349;
 Wed, 14 Aug 2019 13:19:43 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 0/5 V3] nvme: Add type of service (TOS) configuration
Date: Wed, 14 Aug 2019 13:19:35 +0300
Message-Id: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_031957_887613_0E2DC9F1 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

This series adds TOS configuration for TCP and RDMA transports.
It provides clients the ability to segregate traffic flows for different
type of data.
One of the TOS usage is bandwidth management which allows setting bandwidth
limits for QoS classes, e.g. 80% bandwidth to controllers at QoS class A
and 20% to controllers at QoS class B.

Changes from v2:
 - Clamping tos to 255

Changes from v1:
 - Add TCP TOS configuration

Israel Rukshin (5):
  nvme-fabrics: Add type of service (TOS) configuration
  nvme-rdma: Add TOS for rdma transport
  nvme-tcp: Use struct nvme_ctrl directly
  nvme-tcp: Add TOS for tcp transport
  nvmet-tcp: Add TOS for tcp transport

 drivers/nvme/host/fabrics.c | 20 +++++++++++++++++++-
 drivers/nvme/host/fabrics.h |  3 +++
 drivers/nvme/host/rdma.c    |  6 ++++--
 drivers/nvme/host/tcp.c     | 32 ++++++++++++++++++++++----------
 drivers/nvme/target/tcp.c   | 11 +++++++++++
 5 files changed, 59 insertions(+), 13 deletions(-)

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
