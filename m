Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E161E4A7E
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 18:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ts5HNWtf75xBWJWjXoa1v3/vqa97eBcTALma74efOJs=; b=dx+
	nif0nFSuT0RUuDLGQzVVcxf6QjobzGl1jZIkkyK6t6Vo6L//OG3hkY+jKaMdCvgArZnVarXe5x0RS
	dvE4CIAq8pM8sprY+MQkf3oVnms6Uqkr+TD25TeixsiypGN/+jtf+HMgvh7VD1iaEc50BDlpmfOa/
	U7ZcfC5Y9sojTQUc3Ef5Z3Cj8srvxxCkfq9TRE+g9hK29LEKcgf6hm4fKH/w7u2TIpRfIXG83c8nt
	KZOVzGTWCzINjGZ2tfkghsbLgi8f3KeNxIabvCdtZTaxQ/86SDUvKqML7rSlFuWXQaffy/6sTI9av
	AvhMHIg60VMZFUGd327SNtITS1xATkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz6k-0004cT-Le; Wed, 27 May 2020 16:40:46 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyoE-0004VW-Fo
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 16:21:44 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RGIhGB149279;
 Wed, 27 May 2020 16:21:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=mj5MgFMqYw4HF6Q0SB3yAk6eb2qmxG2EWk+u/QGMUYM=;
 b=gCbGj2I+EVEPNjqGuDwUAdsZ7OseuIY6KZRA/VZsH8bXKL+VCkFNxbFYOnsQ8UooALyj
 ++WiEH5AL9Bo0hTJC5FTXGTRGf3q+pymnT7g+/J+oBTvIPZ0EtBLfx9Bag5HxXYRHaxZ
 QfmRQH3KTGRzwA4E0yI6zXDW6crjsqd5ceda3U+5ylYDIjXKWgzeRxmXwbxBm6QBq4oY
 9sTSUMWrihKv8LHVYoI059ttq2SKZrrPpgcolZT8C7mlrNKxlgodDC3YnfTScJXIgqWP
 /5e7CFsElHhIlfVhIrb/vur049UBe4AcUMBOQ/6pRnt0ssmbpJFWwORgRRVCsW6BJA26 fg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 318xe1get9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 16:21:18 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RGJ3g3193273;
 Wed, 27 May 2020 16:21:17 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 317ddr2v97-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 16:21:16 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04RGLBQ4011633;
 Wed, 27 May 2020 16:21:11 GMT
Received: from localhost.localdomain (/10.211.9.80)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 09:21:11 -0700
From: Dongli Zhang <dongli.zhang@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/1] nvme-pci: avoid race between nvme_reap_pending_cqes()
 and nvme_poll()
Date: Wed, 27 May 2020 09:13:52 -0700
Message-Id: <20200527161352.21227-1-dongli.zhang@oracle.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=1 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=1 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_092138_638204_C32CE8A3 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org, ming.lei@redhat.com,
 axboe@fb.com, kbusch@kernel.org, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

There may be a race between nvme_reap_pending_cqes() and nvme_poll(), e.g.,
when doing live reset while polling the nvme device.

      CPU X                        CPU Y
                               nvme_poll()
nvme_dev_disable()
-> nvme_stop_queues()
-> nvme_suspend_io_queues()
-> nvme_suspend_queue()
                               -> spin_lock(&nvmeq->cq_poll_lock);
-> nvme_reap_pending_cqes()
   -> nvme_process_cq()        -> nvme_process_cq()

In the above scenario, the nvme_process_cq() for the same queue may be
running on both CPU X and CPU Y concurrently.

It is much more easier to reproduce the issue when CONFIG_PREEMPT is
enabled in kernel. When CONFIG_PREEMPT is disabled, it would take longer
time for nvme_stop_queues()-->blk_mq_quiesce_queue() to wait for grace
period.

This patch protects nvme_process_cq() with nvmeq->cq_poll_lock in
nvme_reap_pending_cqes().

Fixes: fa46c6fb5d61 ("nvme/pci: move cqe check after device shutdown")
Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Keith Busch <kbusch@kernel.org>
---
Changed since v1:
  - Add "Fixes" tag

 drivers/nvme/host/pci.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 3726dc780d15..cc46e250fcac 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1382,16 +1382,19 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
 
 /*
  * Called only on a device that has been disabled and after all other threads
- * that can check this device's completion queues have synced. This is the
- * last chance for the driver to see a natural completion before
- * nvme_cancel_request() terminates all incomplete requests.
+ * that can check this device's completion queues have synced, except
+ * nvme_poll(). This is the last chance for the driver to see a natural
+ * completion before nvme_cancel_request() terminates all incomplete requests.
  */
 static void nvme_reap_pending_cqes(struct nvme_dev *dev)
 {
 	int i;
 
-	for (i = dev->ctrl.queue_count - 1; i > 0; i--)
+	for (i = dev->ctrl.queue_count - 1; i > 0; i--) {
+		spin_lock(&dev->queues[i].cq_poll_lock);
 		nvme_process_cq(&dev->queues[i]);
+		spin_unlock(&dev->queues[i].cq_poll_lock);
+	}
 }
 
 static int nvme_cmb_qdepth(struct nvme_dev *dev, int nr_io_queues,
-- 
2.17.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
