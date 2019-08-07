Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0006484661
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 09:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FCbcPhcVEdW4c1othU2OVb7TR4JGQqECWqAXsIhMIQY=; b=gsV
	CGLch1KSYKNnKkp6qoTFmkmdd/Y7V18iT879q/OBJcpcE3wBGuFxAgBU+gf30wj5Sy6g8+YSvEiDE
	Za1lMnc7PR9LdumSusNpvt8mpYkZ0AA3Qn3Hkd0o4OGdIFrnVL/Vl/MLqlkBQiZ2swCSovoogVZLh
	do6bU3l1H5sjtghpFmn1eryAzP6xQFUqjb4mrrSbFQqqIURwSJaQQCNcQSh8HRC7qaYnH3G9E7F9e
	Oh+9zCkb/gDnyGBbL1GhdmXPvqAnySuewOEdoL9JxBaEyl2qvLwOq6ILU7Jto+6Bu4YV8C8/NMQ95
	nDBfvMBTR5ounLdAfktkjdYqD+d0meA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGlL-0007Te-9b; Wed, 07 Aug 2019 07:53:35 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGjk-0006fx-Rs
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 07:52:01 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x777pPaJ021791;
 Wed, 7 Aug 2019 02:51:26 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 0/4] nvme-pci: Support for Apple 201+ (T2 chip) 
Date: Wed,  7 Aug 2019 17:51:18 +1000
Message-Id: <20190807075122.6247-1-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_005157_242986_50AAAB03 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This series combines the original series and an updated version of the
shared tags patch, and is rebased on nvme-5.4.

This adds support for the controller found in recent Apple machines
which is basically a SW emulated NVME controller in the T2 chip.

The original reverse engineering work was done by
Paul Pawlowski <paul@mrarm.io>.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
