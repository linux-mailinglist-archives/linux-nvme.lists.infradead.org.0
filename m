Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE99AFB1A0
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 14:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fumi6XrypLOC+fepiAywOI2nWSoq/630lrD88uguCN0=; b=S7ussHKL/0G6cW
	2q69bT9rkWmeKgiXwT38dyLAavsYqrVKPv6wYA9uMfuI+ebp2OO8s4441mGC0K2YZsZipcVgKkVMI
	Smi1Hhrdjul9AYHkJJIQXZq7yZGwXexkVabZmzI+9rNCDrw3i6d9ZB7dUL1QwBm8UPBz+mnB0srV8
	Hi35lNDmPXqdyXan4ePVqH5uD0z2iLwsJtNbJEjgLXJcTfvrt9Y2ZP4dOn8TkGfaf735vwi1J0cZL
	rn3bE6qY51sixsIBFqHmxhIgzh/BQIAoUlD0fd8p7EebkMj9vVtuQ3kFgEA9Ya5THUW8/mbELG0Vl
	qPGzTcOcUA6HDS92wnrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsvT-00039h-AR; Wed, 13 Nov 2019 13:43:15 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsvN-000393-Fw
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 13:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573652587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ad50JoYvmHCbydBCeLggf7o1Y5TaevbO4mdzUYSyzSU=;
 b=UwfY5TDNPchZLOAHEAIT2ZqLLxX/avDc0P7ZYwvpOQI6fSOFaskI7ieGHhqrGURxy7QKyG
 nG2giYH37Str0fDmWM1EJiMgjFEynm/mK56ZgDB0HUh/k8qqL8blLdhWX41L6rAIWZYSbP
 ozcIBzD6a/PvIFjhU4QAmlAYIdcag3Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-LZWBfr1rNrKYDPNYu6vj9g-1; Wed, 13 Nov 2019 08:43:00 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9042C8048F1;
 Wed, 13 Nov 2019 13:42:59 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B20CE60556;
 Wed, 13 Nov 2019 13:42:54 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Date: Wed, 13 Nov 2019 21:42:46 +0800
Message-Id: <20191113134248.26022-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: LZWBfr1rNrKYDPNYu6vj9g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054309_599564_DE9C80E3 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
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

V2:
	- only check CQ for Microsoft device.


Ming Lei (2):
  nvme-pci: move sq/cq_poll lock initialization into nvme_init_queue
  nvme-pci: check CQ after batch submission for Microsoft device

 drivers/nvme/host/nvme.h |  6 +++
 drivers/nvme/host/pci.c  | 98 ++++++++++++++++++++++++++++++++++------
 2 files changed, 91 insertions(+), 13 deletions(-)

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
