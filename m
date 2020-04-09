Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8053F1A37C7
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l1aGz3OMdCll2ALGcftdy1tOZ7XSeJlGvY26aj5ylNk=; b=HMZSZPqv0USiZZ
	JGGc/mqQ1bLhew9vh9xO9k8IbeQk2QEMsoWjkS7cTA6bo0IONlS+QNcud/whXEiGebvB6vG5fXln1
	ldDkOjVU4p6zu12Ic1H3usgfAJnIandsd//ERn8kVWt/ZDkOLRg1CdRAJ2RRyt2RpZb39B3oxeL2K
	w1hl+XF0TjnYPe7/bp2C5bcZIWScYOywGh0g5Ivkh8kPTjfcTOinZ5htLZPd4/xErxXHkuJE6cdof
	SuaYRiXS5TyXlI5XYFXelpNJ00yfh5YfnUOgg/uACvcZNGRvdBs857AE94PQyRy6PiWLRCcXbBxic
	IVo43on5EEtXSxxhvNng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZjz-0001S2-M7; Thu, 09 Apr 2020 16:09:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjq-0001Pj-Bn
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:12 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78B9D20771;
 Thu,  9 Apr 2020 16:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448549;
 bh=iKWof8b0exp4bjgAolQIwP9IWPfjfT6BA8MFz7/71rA=;
 h=From:To:Cc:Subject:Date:From;
 b=FL/oT+8lRe7FSHAuoBY0OKE4ix838+pLeYYp0asJi+qmJW6zI4N4wi3kaWYjrYGP2
 bXc2/WNAZK23st819dnQSbtuzOAzyWD38VjR3HVMKt5K4s7Vv4sAV6XlRTN+HVVGxd
 xpCWBdmxlj+Tu4h8p7BG8r/vqAr8bmawZwBjVe6s=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 00/10] namespace settings updates
Date: Thu,  9 Apr 2020 09:08:58 -0700
Message-Id: <20200409160908.1889471-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090910_419714_FDF2497E 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A collection of fixes and rearrangments to setting up namespaces.

Keith Busch (10):
  nvme: unlink head after removing last namespace
  nvme: release namespace head reference on error
  nvme: always search for namespace head
  nvme: save namespace head shared property
  nvme: don't directly update multipath queue settings
  nvme-multipath: set bdi capabilities once
  nvme: revalidate after verifying identifiers
  nvme: consolidate chunk_sectors settings
  nvme: revalidate namespace stream parameters
  nvme: consolodate io settings

 drivers/nvme/host/core.c      | 116 +++++++++++++++++-----------------
 drivers/nvme/host/multipath.c |   8 +++
 drivers/nvme/host/nvme.h      |   2 +-
 3 files changed, 67 insertions(+), 59 deletions(-)

-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
