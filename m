Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DB0F3E9B
	for <lists+linux-nvme@lfdr.de>; Fri,  8 Nov 2019 04:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OKOa13DOedbpr6nrI+MH3qykGhDRgFSCQLzvdnMD9Y8=; b=nEYKsRj+3r7VtY
	J2ygrNtawCmWog5VnFKMllbyPyXMtaF5BE0kZmpaF8Wx8RWi5Bzam59l5I7Jbx/0p2OKvJi2kZaTT
	vHtXIAedVgxCu80yr+c2KrpLugr/SOi8v51G5nxxwOeNe0yVVBXC4CsyUYOKkIo66CgLowZ9k8w/E
	KU9iHyc9PmOqr0SoQseZyU6RAbM0qiRirvMK72sG3qt1OnzIl5xdJbCTUIpg/sGvEyORvvyTL/WNV
	dTbVCDvm+vNPhVIIbILxh36w9vH9g4sMwSEP42Oba3pMb8931nlhiqlkLXcGM0TzcMKOQyc3ICxIV
	4WzFddkCHtDBQHq7ommg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvN0-0004rX-LV; Fri, 08 Nov 2019 03:55:34 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvMw-0004qp-BB
 for linux-nvme@lists.infradead.org; Fri, 08 Nov 2019 03:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573185327;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tFgQwy2UonM4Vic5z1K503raETA73/dW88WHAIePo9Y=;
 b=ARfQWgdAe1SDm9Xf4n7ld/bVjiUiJi0OYeXpgPKHMeg2/GRVOP66mEFNFTdB1ps2wFoWgH
 JrtB92Li7Qj09YlSHGRunWotn3VuC242NVg25k3Z5kE8AWz60/taABi7uZDnKapYbAzpM7
 hokdS6xiw4R2hSX+7u7fZgKi/+e+0uU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-_yMZySeZPZmKEVQ6vOppNw-1; Thu, 07 Nov 2019 22:55:21 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 983218017DD;
 Fri,  8 Nov 2019 03:55:20 +0000 (UTC)
Received: from localhost (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 569586084E;
 Fri,  8 Nov 2019 03:55:16 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] nvme-pci: improve IO performance via poll after batch
 submission
Date: Fri,  8 Nov 2019 11:55:06 +0800
Message-Id: <20191108035508.26395-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: _yMZySeZPZmKEVQ6vOppNw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_195530_509950_6B74A38B 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

In case that single nvme queue is mapped from multiple blk-mq sw queue,
this patchset improves IO handling by polling after batch submission.

Turns out that IOPS is improved much in single job aio test.

Also it is observed that the CPU lockup issue in Hyper V guest can't
be triggered any more after this patch is applied.

Thanks,

Ming Lei (2):
  nvme-pci: move sq/cq_poll lock initialization into nvme_init_queue
  nvme-pci: poll IO after batch submission for multi-mapping queue

 drivers/nvme/host/pci.c | 93 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 82 insertions(+), 11 deletions(-)

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
