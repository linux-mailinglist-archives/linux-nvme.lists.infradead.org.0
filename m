Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22B176437
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Mar 2020 20:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vMZbsG9TGQp8PJ5suCFadASnz1Q/h7yPlOBzDlr7c3E=; b=WgdZASPgZGC5+W
	blUPBp4lMXWlimtS6bH7CA/ui1j3EYuoHwTLir120Chpv61DGQarHMuXRrHE5+YCAOSDGK8rrgSsP
	3aApCrWQHAYg8Qq+GwSBzW56OuZaNDb9i0CZEVhwkhCpbP7SEAccYrW0cI2wA5duj/QB6eBxrUTqP
	DWxLQzJN0rGfUPTuO21Kv8MDEDXsYAJnNFFvwhkfpJU/fKG78XgXnIuFa7qlDfN0fcHL74U6jw4Cc
	OHzC4ydDrFW91pACX53FPLg6qAaFb3UNbgtQs6M/NjwVKZjIc+PQH81Kqb4TOGWZVS3sRu0W1flIL
	hxD6dZPWjNLLpVY9dQ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8r1S-0000WP-QW; Mon, 02 Mar 2020 19:46:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8r1C-0000On-KF
 for linux-nvme@lists.infradead.org; Mon, 02 Mar 2020 19:46:23 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A96820866;
 Mon,  2 Mar 2020 19:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583178381;
 bh=tUPMHJWeiYo82/ayF4Ew4F7rF6Ot+oTRIF6p9ngGnts=;
 h=From:To:Cc:Subject:Date:From;
 b=LPDnF1bTyoNv8PAd841MeTO+tyyTfll4vtRIh1s8t6jz75Bqahc5hqm3Nt+wKxA1q
 nbsypXsN6WuC/VCnPIAPRJ7PFpxyCTh0y6xMoNC90tAKjOmr8ZtbN1LQlymAbUhf1o
 ODQdnOHo0Mh/miuBmaMZm29VBD1ap+DUIlvUpmzA=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 0/2] nvme-pci: Simpler completions
Date: Mon,  2 Mar 2020 11:46:14 -0800
Message-Id: <20200302194616.2432-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_114622_706032_1471EAF1 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, bijan.mottahedeh@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This actually demostrates a modest performance increase, and that's
always nice.

The first patch prepares for cq doorbell ringing without the start/end
check, the second one is the real work.

Keith Busch (2):
  nvme-pci: Remove tag from process cq
  nvme-pci: Remove two-pass completions

 drivers/nvme/host/pci.c | 48 ++++++++++++-----------------------------
 1 file changed, 14 insertions(+), 34 deletions(-)

-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
