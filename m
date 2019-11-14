Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45376FBE0D
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 03:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jnn139/ukNolhPIY89n0YIdd36xnywgHnuj9Rowc6Bo=; b=EEBV6fWK2TgO3A
	FSYf1/hBoNk2/zQl9WNKJWNYP2TlLyXDDAhw18GMhlMfRmo91Tw2tsYz+6vhxSLu/tDk38jgarBPO
	Jtzgf/OD76j+Wb4bgtLgssyCJiyZEGCYBOG6Oqi+9xUIXL5vHeEIDuJnp7oQV4A73PBJwz9oNcRrh
	UHp/LBvFtRXVHWLiCNGCO7ClV/WkhH8omf2u6G6lspahIp2gDh8ZUyxSEVETCrkjofNb+PO7INkct
	X5AhEMf9elE9ycuW/f6mjZnlk6To5HDQcHPvbcop3nEct+5QgWbL1nFF5gks+53CqTWNyJ7M8ICc8
	o7oEbFBXKAJOFWWG7yCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5ME-0002Sq-5m; Thu, 14 Nov 2019 02:59:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5M8-0002SU-LT
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 02:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573700372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=6EETLlYXh8DF2o1z0hf5bGjFzpXAPhLRUUuqlQ63vdo=;
 b=JsTyrHMRtqQPZP16RyRh8t4GQuRG/r+MGjTkFr4iNr+sak+scsfvLKI5DZdpsikamNKg2s
 J5jlId40FDOdEzNkgubkudRxtK+HKcWw4KnWfCZFUIARPNbUh+KuHwaTK9Er10n/11lmjB
 XN51agvPEh+jaB6SdGIMh06iYLSKcJc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-ez2uYXYTM92cD9xioktfXA-1; Wed, 13 Nov 2019 21:59:28 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3ED46102CE1A;
 Thu, 14 Nov 2019 02:59:27 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 771F548D9B;
 Thu, 14 Nov 2019 02:59:23 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Date: Thu, 14 Nov 2019 10:59:15 +0800
Message-Id: <20191114025917.24634-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: ez2uYXYTM92cD9xioktfXA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_185936_780084_3806A885 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

The two patches fix one performance regression on Microsoft Corporation device. The
root cause is that Microsoft device applies aggressive interrupt coalescing, so
single job fio performance drops much after we removes checking cq in
f9dde187fa92("nvme-pci: remove cq check after submission").

Turns out this issue is very specific on Microsoft device, so add
a quirk for checking CQ on this device.

V3:
	- replace spin_trylock_irqsave with spin_trylock_irq
	- fix comment on cq_lock & cq_poll_lock

V2:
	- only check CQ for Microsoft device.



Ming Lei (2):
  nvme-pci: move sq/cq_poll lock initialization into nvme_init_queue
  nvme-pci: check CQ after batch submission for Microsoft device

 drivers/nvme/host/nvme.h |  6 +++
 drivers/nvme/host/pci.c  | 98 ++++++++++++++++++++++++++++++++++------
 2 files changed, 90 insertions(+), 14 deletions(-)

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Long Li <longli@microsoft.com>
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
