Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1D022072
	for <lists+linux-nvme@lfdr.de>; Sat, 18 May 2019 00:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V2Bad48BkKWdW4ri3dDLB1zyY0se4Uek1CIDDq7F2KA=; b=R/saamEvMwTGjw
	qxL08djgKhiSD4RHFVYTo/lF7fOHkNfNcvINQWvJx1qM3JhCA85OVpl+K0h927dGU7h/PHQ5EcpfC
	PKEmUuyJDH/7Vt+sCL9x91lQ6iAt8y86j1PB504iiQxObzabPusrXHYgCzJBHLPHgX0ToA/Tki3s/
	UDq6Em42pS0gb2RojYq9kPsIGlh8u+I8z/mf2uuw2E772XEnTkndcA602MEyvuiDH5Kh6ghQIj7Mz
	bY4c8hZXr1U0A4f9DDrWbQg8eYJ997H+Wv3QM/V+DXaGkPYMjLMtx7zYXPQHGNUXd05UeDBNrRZsi
	Gkc4cJ6WZYdb2in7QydA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlgs-0003uY-B5; Fri, 17 May 2019 22:51:02 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlgk-0003r3-EN
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 22:50:56 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C6695308212A;
 Fri, 17 May 2019 22:50:51 +0000 (UTC)
Received: from localhost (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA4DB60FAF;
 Fri, 17 May 2019 22:50:48 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH] nvme-pci: fix single segment optimization
Date: Sat, 18 May 2019 06:50:35 +0800
Message-Id: <20190517225035.25008-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 17 May 2019 22:50:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_155054_494503_E92A5D69 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Commit dff824b2aadb ("nvme-pci: optimize mapping of small single segment
requests") supposes that single request request only includes single
bvec.

However, this assumption is wrong, since the single segment may cross
multiple bios, then there may be multiple bvecs involved in the segment.

Fixes this issue by checking if it is single bio request, if yes, the
request includes only one bvec, given we don't merge bvecs to one
segment if they belong to same bio.

Cc: Sagi Grimberg <sagi@grimberg.me>
Fixes: dff824b2aadb ("nvme-pci: optimize mapping of small single segment requests")
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---

Hi Christoph,

This patch is candidate on your patch of 'block: don't decrement
nr_phys_segments for physically contigous segments', and I suggest to
take this one because this patch is simpler, and more suitable to serve
as v5.2 fix. 

And your patchset can aim at 5.3 as cleanup after careful
test/evaluation on performance effect.

 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..6a38a760a295 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -824,7 +824,8 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
 	blk_status_t ret = BLK_STS_RESOURCE;
 	int nr_mapped;
 
-	if (blk_rq_nr_phys_segments(req) == 1) {
+	/* Avoid the optimization if the single segment crosses two bios */
+	if (blk_rq_nr_phys_segments(req) == 1 && req->bio == req->biotail) {
 		struct bio_vec bv = req_bvec(req);
 
 		if (!is_pci_p2pdma_page(bv.bv_page)) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
