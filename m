Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BC3D2E4A
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BdqMl0eiEMoeUP0YBIqSf0wJS/6VheRx109rh/GRNdY=; b=sF/Js9svi1Ru7F
	o2999DlsGUgYKHDa+bnoivWoxuFZmuVv5Mc8pvjMkD2VWy4YGczV15d+1g/DHCeGU8rtpZdHuvLgx
	ej8UyB2kWPVX5awTU9g7f3mIMuIJJZZVtotgkbyPO4SZxsk0bydLHd9Lm99BepxLtmbCFm+X6sSN7
	L8/la5maIeEiKnA1c+5Yj7hi2QPNv5m46orYU19v0hJuEvk41qr1BkB5W3NfGqKUEki3t08at+UQ3
	8RLYAwAfYhiAf5LUbxdp7Fyy03gD/knKy6iVz/GGO2h63D+nxSyAll99BTMCIS5jMnQLHO3HxHy9/
	jyN3vmff0/w33LsYF5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIawb-0001xa-QQ; Thu, 10 Oct 2019 16:05:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIawW-0001wQ-U3
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:05:34 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32DB5214E0;
 Thu, 10 Oct 2019 16:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570723532;
 bh=jTdJv9O+IiF3uwM767Rq9mFMaeXhgW3vjnzeEw0+l50=;
 h=From:To:Cc:Subject:Date:From;
 b=CvIpyAEGlZkCJJSmBdERk8H9I3s0aO4+9dcFlXGiJ46rRBPMZprhZHpTyK283yWV8
 U12lnon1Tc00kx83KlDkPM0Hp4Yaad4cYBssBjywTODzhQ1MrVTH/Q2epjdPTS4/ar
 vt3hrsmigq0UWu5GqvuM3VhbBF/XsfAejJBTEirM=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCHv3 0/5] nvme: double reset prevention
Date: Fri, 11 Oct 2019 01:05:22 +0900
Message-Id: <20191010160527.22376-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_090532_987773_19A7AB03 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Judy Brock <judy.brock@samsung.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The main objective of this series is to prevent double resets. This sort
of thing is known to have happened if a timeout occurs at roughly the
same time as a user intiated reset, like through through PCIe's FLR.

The double reset could happen because the controller disabling had been
occuring outside of the RESETTING state when we can't schedule the
reset_work, which is to occur later. When another reset schedules in
between these events, the controller ends up in the wrong state.

The end result of this series is simply to block subsequent resets by
initializing the controller state to RESETTING without actually scheduling
the reset_work.

v2 -> v3:

  Added received reviews for patches that have not been significantly
  modified from the previous version.

  Changelog updates.

  Merged to most current linux mainline.

  Added code comments for the less obvious interactions.

  Collapsed the patch that introduced the new nvme_reset_continue()
  function with the "processing paused" patch that first uses it.

  Renamed nvme_reset_continue() to nvme_reset_schedule() and documented
  its usage in comments.

  Renamed nvme_state_transient() to nvme_state_terminal() and updated
  the logic accordingly.

Keith Busch (5):
  nvme-pci: Free tagset if no IO queues
  nvme: Remove ADMIN_ONLY state
  nvme: Restart request timers in resetting state
  nvme: Prevent resets during paused controller state
  nvme: Wait for reset state when required

 drivers/nvme/host/core.c    | 90 +++++++++++++++++++++++++++----------
 drivers/nvme/host/fabrics.h |  3 +-
 drivers/nvme/host/nvme.h    |  5 ++-
 drivers/nvme/host/pci.c     | 78 +++++++++++++++++++-------------
 drivers/nvme/host/rdma.c    |  8 ++++
 drivers/nvme/host/tcp.c     |  8 ++++
 6 files changed, 133 insertions(+), 59 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
