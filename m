Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D901E3434
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 02:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8h83yTdRsjsF/vqBqzVufsoPbyMKmhZHPe3q2xhGUus=; b=d/a
	ZuXTFPF+O9jvUqyr6zsiN+RAQGX6bzkU4wASlxfqgNQP2iotpQiegka7DyAh4hojHcfThPzHpav7P
	THgcyM0dVA/fVWb2+ocf8C9RqoUx9zPV/t3OiGkFaV2i2vr3alT8mvwtPPWb+7FzvyzuagkjvKX8f
	GOxoabNIUNhNlPyYSNnMUKC4rND35YZUFPOnghRmTa4z5mCYHS+jgrHw3Rr8mZ8r1L6Oko3bnoHeN
	po1v1QP+3Wat/HnQHUzjNcDoVoVTo94JyoWCNJiaD9JziTdv2MItzfUSc9BrsdZ2E+Ic+8zJOJsCx
	KE99DsUiEHXUTNxGySA3G/AtvCL/V2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkNq-0005lK-Fj; Wed, 27 May 2020 00:57:26 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkNn-0005kv-02
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 00:57:24 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R0perx174744;
 Wed, 27 May 2020 00:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=1SQ1TOvRAmYsofH3JFqW3Rc6f8U9dMkKKaEe8wf3ncM=;
 b=KfxK3k9T+tF0DbyAyrZPMsc3tSZ8kQ8UjABz3bnGiYTn7RocXdQTOoSzKjODQ9NA5Uqc
 l0W10pO8Lqzs7wgbCUx2em/zw+Ls0JVv9U7w14/bvJOFG0NmzA5A87XHtcHL3rb4j551
 2cpo1cn4qIa86/9+FqypHRphPJ/qQ+6dFHQvWm7Y3aYLRLDU8k2FqnDKbVcyoE9XCN3G
 w9uT4GwMBjHoUz/NHhmB9f4gjFcHzTQNQ+wmAGqhlL4RAZGkSmnU/9TJ2wwflfIRPP4X
 dn0Xc2PgZNj68Sjh4N7PJ6weFZfhT1XSy2M+9r6lEu3VzoIqVhoNiPFpZAKIFp51LIlx VA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 316u8qvrq8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 00:57:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R0rYnC093329;
 Wed, 27 May 2020 00:57:08 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 317dktetjr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 00:57:08 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04R0v6qU007389;
 Wed, 27 May 2020 00:57:07 GMT
Received: from localhost.localdomain (/10.211.9.80)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 May 2020 17:57:06 -0700
From: Dongli Zhang <dongli.zhang@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/1] nvme-pci: avoid race between nvme_reap_pending_cqes() and
 nvme_poll()
Date: Tue, 26 May 2020 17:49:55 -0700
Message-Id: <20200527004955.19463-1-dongli.zhang@oracle.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=1 mlxscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=1
 phishscore=0 clxscore=1011 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005270001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_175723_170112_A6DBB54C 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbusch@kernel.org, axboe@fb.com, sagi@grimberg.me,
 linux-kernel@vger.kernel.org, hch@lst.de
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

Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
---
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
