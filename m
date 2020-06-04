Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FE1EE3C4
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 13:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SXonBwM++ZKfdhTA1JI9DWkJbBErM4jH3CPE9urOLBs=; b=Uoj
	VTNvIbLtvHYxXi/d9/dLgVAJAlEA0g1IHTczQSpr5rTTxac3b0D+zVyj7c52KsiJJbrXuJPhwnUyB
	4iS+CSKp8lAS6VZDK7Rk/6k2TvUpQyCTo0MSI99tu3q48NT/di3ifQ+ku7qYIdH9FcOAOaGb1uY2e
	eHUfbKE+hD0FQo+vNd6qqKUFE1WWSA3apygYc4cq9Co4pI73Hi8CVccqLZixArOkscnEnfPygUnlX
	D7NDwyYRtj2JgoulHdBvI/oKx7/BmRcGcN1+hnYbEj0+3zGAn+Z32efiFbMTfAArxYIdldgJaGOkF
	hE/K9P3WE8Ofx8JNPXtJHmiwbDqSoZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgoU1-00079r-JZ; Thu, 04 Jun 2020 11:56:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgoTo-00073l-8x
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 11:56:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D7644AB64;
 Thu,  4 Jun 2020 11:56:13 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/2] nvme: fix reconnection stalls
Date: Thu,  4 Jun 2020 13:56:00 +0200
Message-Id: <20200604115602.78446-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_045616_460553_765951DA 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org, Daniel Wagner <daniel.wagner@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

during testing we have come across namespaces not being available
after reconnection. This is caused by (yet another) deadlock between
reconnect and scanning; reconnection will wait for the scan workqueue
to be flushed, but scanning cannot make progress if I/O is
outstanding, as the I/O will only be completed _after_ reconnection
completed.
The particular issue here is that nvme_revalidate_disk() might be
several I/O to be sent; the first one (IDENTIFY NAMESPACE) will be
terminated, but the subsequent ones are not.
These two patches fix this deadlock by checking the controller state
before sending the I/O.

As usual, comments and reviews are welcome.

Hannes Reinecke (2):
  nvme: check for NVME_CTRL_LIVE in nvme_report_ns_ids()
  nvme: do not update multipath disk information if the controller is
    down

 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
