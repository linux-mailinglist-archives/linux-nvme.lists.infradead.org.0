Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2820F1AD8B8
	for <lists+linux-nvme@lfdr.de>; Fri, 17 Apr 2020 10:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MHeySWlrW2tL6Oqisn4U7upx8/7G2Byvl6HXXTWlzPE=; b=T02
	RTzkdtAArqQnNp4NGAlhQZf+q+2+BL2OhXgyfP3IcHbT2E2VtyBZbG4b1oPVTNrZaoV70YnFh0meD
	H89CB84Le3VMXH9iIzJAiXP0yHbAabrtyZm+qUqs8JrEpm6qGYyfMQ0ZYD3AJdPqxkfHnYLVqjrfU
	hVSU3omeq+CuGcV1Tpk6m/kIDW3OPAldl5Kap2U5FH/CHAwyAF5RlgepLt7XxFnARZGX1Bb+J6d65
	QxUF9DktrkAnm3Z37V7dsYaC8RhZbPj7Ks9Y7PdNy2Fze97MZ2ixHQQn84VGlf3NtzmtII0v+XvdI
	9IkZuWqa6JmtQoZV+nExSPSWBp0PoUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMUd-00065V-Cy; Fri, 17 Apr 2020 08:36:59 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMUY-00064J-K1
 for linux-nvme@lists.infradead.org; Fri, 17 Apr 2020 08:36:56 +0000
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1jPMUP-00047h-Dy; Fri, 17 Apr 2020 08:36:45 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: kbusch@kernel.org,
	axboe@fb.com,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme/pci: Use Discard instead of Write Zeroes on SK hynix
 SC300
Date: Fri, 17 Apr 2020 16:36:41 +0800
Message-Id: <20200417083641.28205-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_013654_795187_4AF567ED 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "open list:NVM EXPRESS DRIVER" <linux-nvme@lists.infradead.org>,
 linux-stable <stable@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

After commit 6e02318eaea5 ("nvme: add support for the Write Zeroes
command"), SK hynix SC300 becomes very slow with the following error
message:
[  224.567695] blk_update_request: operation not supported error, dev nvme1n1, sector 499384320 op 0x9:(WRITE_ZEROES) flags 0x1000000 phys_seg 0 prio class 0]

Use quirk NVME_QUIRK_DEALLOCATE_ZEROES to workaround this issue.

BugLink: https://bugs.launchpad.net/bugs/1872383
Cc: linux-stable <stable@vger.kernel.org> # >= 5.1
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/nvme/host/pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4e79e412b276..e3f4dac823d8 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3068,6 +3068,8 @@ static const struct pci_device_id nvme_id_table[] = {
 		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
 	{ PCI_DEVICE(0x1c58, 0x0023),	/* WDC SN200 adapter */
 		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
+	{ PCI_DEVICE(0x1c5c, 0x1504),	/* SK hynix SC300 */
+		.driver_data = NVME_QUIRK_DEALLOCATE_ZEROES, },
 	{ PCI_DEVICE(0x1c5f, 0x0540),	/* Memblaze Pblaze4 adapter */
 		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
 	{ PCI_DEVICE(0x144d, 0xa821),   /* Samsung PM1725 */
-- 
2.17.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
